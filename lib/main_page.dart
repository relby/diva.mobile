import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:diva/generated/auth.pb.dart';
import 'package:diva/secure_storage.dart';
import 'package:diva/widgets/customer.dart';
import 'package:diva/widgets/employee.dart';
import 'package:flutter/material.dart';
import 'package:diva/api.dart';
import 'package:diva/generated/employees.pbgrpc.dart';
import 'package:diva/generated/customers.pb.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/async.dart' as flutter_async;
import 'package:grpc/grpc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isAdmin = false;

  // ignore: unused_field
  late Future<List<Customer>> _customersFuture;
  String _customersFullName = "";
  String _customersPhoneNumber = "";
  // ignore: unused_field
  late Future<List<Employee>> _employeesFuture;
  int _bottomNavigationBarCurrentIndex = 0;

  void _setIsAdmin(bool value) {
    setState(() {
      _isAdmin = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _customersFuture = _getCustomers(context);

    Future.microtask(() async {
      final accessToken = await getAccessToken();
      if (accessToken == null) {
        return;
      }

      final jwt = JWT.decode(accessToken);

      _setIsAdmin(jwt.payload['typ'] == 'admin');
      if (_isAdmin) {
        _employeesFuture = _getEmployees(context);
      }
    });
  }

  Future<void> _refreshCustomers(BuildContext context) async {
    setState(() {
      _customersFuture = _getCustomers(context);
    });
  }

  Future<List<Customer>> _getCustomers(BuildContext context) async {
    return await makeGrpcCall(context, () async {
        final accessToken = await getAccessToken() ?? '';

        final response = await customersServiceClient.listCustomers(
            GetCustomersRequest(
                fullName: _customersFullName,
                phoneNumber: _customersPhoneNumber),
            options: CallOptions(
                metadata: {'Authorization': 'Bearer $accessToken'}));

        return response.customers;
      }) ??  [];
  }

  Future<void> _addCustomer(BuildContext context, String fullName,
      String phoneNumber, int discount) async {
    return await makeGrpcCall(context, () async {
      final accessToken = await getAccessToken() ?? '';

      await customersServiceClient.addCustomer(
        AddCustomerRequest(
            fullName: fullName, phoneNumber: phoneNumber, discount: discount),
        options:
            CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}),
      );
    });
  }

  void _showFindCustomersDialog() {
    var fullNameController = TextEditingController(text: _customersFullName);
    var phoneNumberController =
        TextEditingController(text: _customersPhoneNumber);

    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                title: const Text('Найти покупателя'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      controller: fullNameController,
                      decoration: InputDecoration(
                          labelText: 'Фамилия',
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                fullNameController.clear();
                              })),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: 'Номер телефона',
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                phoneNumberController.clear();
                              })),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Отмена'),
                  ),
                  TextButton(
                    onPressed: () async {
                      setState(() {
                        _customersPhoneNumber = phoneNumberController.text;
                        _customersFullName = fullNameController.text;
                      });
                      await _refreshCustomers(context);
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('ОК'),
                  ),
                ],
              );
            },
          );
        });
  }

  void _showAddCustomerDialog() {
    final fullNameController = TextEditingController();
    final phoneNumberController = TextEditingController();
    final discountController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    showDialog(
        context: context,
        builder: (context) {
          return Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: AlertDialog(
                title: const Text('Добавить покупателя'),
                content: Column(mainAxisSize: MainAxisSize.min, children: [
                  TextFormField(
                    controller: fullNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Введите фамилию';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Фамилия',
                        suffixIcon: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              fullNameController.clear();
                            })),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: 'Номер телефона',
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                phoneNumberController.clear();
                              }))),
                  const SizedBox(height: 8),
                  TextFormField(
                      controller: discountController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Введите скидку';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          labelText: 'Скидка',
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                discountController.clear();
                              }))),
                ]),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Отмена'),
                  ),
                  TextButton(
                    onPressed: () async {
                      if (!formKey.currentState!.validate()) return;
                      await _addCustomer(
                          context,
                          fullNameController.text,
                          phoneNumberController.text,
                          int.parse(discountController.text));
                      await _refreshCustomers(context);
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('ОК'),
                  ),
                ],
              ));
        });
  }

  Future<void> _refreshEmployees(BuildContext context) async {
    setState(() {
      _employeesFuture = _getEmployees(context);
    });
  }

  Future<List<Employee>> _getEmployees(BuildContext context) async {
    return await makeGrpcCall(context, () async {
        final accessToken = await getAccessToken() ?? '';

        final response = await employeesServiceClient.getEmployees(
            GetEmployeesRequest(),
            options: CallOptions(
                metadata: {'Authorization': 'Bearer $accessToken'}));

        return response.employees;
      }) ?? [];
  }

  Future<void> _addEmployee(BuildContext context, String fullName,
      String accessKey, Iterable<EmployeePermission> permissions) async {
    return await makeGrpcCall(context, () async {
      final accessToken = await getAccessToken() ?? '';

      await employeesServiceClient.addEmployee(
          AddEmployeeRequest(
              fullName: fullName,
              accessKey: accessKey,
              permissions: permissions),
          options:
              CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
    });
  }

  void _showAddEmployeeDialog() {
    final fullNameController = TextEditingController();
    final accessKeyController = TextEditingController();

    final formKey = GlobalKey<FormState>();
    var canCreate = false;
    var canUpdate = false;
    var canDelete = false;

    showDialog(
        context: context,
        builder: (context) {
          return Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: AlertDialog(
                title: const Text('Добавить сотрудника'),
                content: StatefulBuilder(builder: (context, setState) {
                  return Column(mainAxisSize: MainAxisSize.min, children: [
                    TextFormField(
                      controller: fullNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Введите полное имя';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'Полное имя',
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                fullNameController.clear();
                              })),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                        controller: accessKeyController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Введите полное имя';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Ключ доступа',
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  accessKeyController.clear();
                                }))),
                    CheckboxListTile(
                      title: const Text("Добавление"),
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      value: canCreate,
                      onChanged: (value) {
                        setState(() {
                          canCreate = !canCreate;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: const Text("Изменение"),
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      value: canUpdate,
                      onChanged: (value) {
                        setState(() {
                          canUpdate = !canUpdate;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: const Text("Удаление"),
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      value: canDelete,
                      onChanged: (value) {
                        setState(() {
                          canDelete = !canDelete;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ]);
                }),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Отмена'),
                  ),
                  TextButton(
                    onPressed: () async {
                      if (!formKey.currentState!.validate()) return;
                      await _addEmployee(context, fullNameController.text,
                          accessKeyController.text, [
                        if (canCreate) EmployeePermission.CREATE,
                        if (canUpdate) EmployeePermission.UPDATE,
                        if (canDelete) EmployeePermission.DELETE,
                      ]);
                      await _refreshEmployees(context);
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('ОК'),
                  ),
                ],
              ));
        });
  }

  void _bottomNavigationBarOnTap(int index) {
    setState(() {
      _bottomNavigationBarCurrentIndex = index;
    });
  }

  Widget _customerList() {
    return RefreshIndicator(
        onRefresh: () => _refreshCustomers(context),
        child: FutureBuilder(
            future: _getCustomers(context),
            builder: (context, snapshot) {
              if (snapshot.connectionState ==
                  flutter_async.ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else {
                final customers = snapshot.data!;
                return Center(
                  child: ListView.builder(
                      itemCount: customers.length,
                      itemBuilder: (context, index) {
                        return CustomerWidget(
                          customer: customers[index],
                          onUpdate: () => _refreshCustomers(context),
                        );
                      }),
                );
              }
            }));
  }

  Widget _employeeList() {
    return RefreshIndicator(
      onRefresh: () => _refreshEmployees(context),
      child: FutureBuilder(
        future: _getEmployees(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              flutter_async.ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            final employees = snapshot.data!;
            return Center(
              child: ListView.builder(
                  itemCount: employees.length,
                  itemBuilder: (context, index) {
                    return EmployeeWidget(
                      employee: employees[index],
                      onUpdate: () => _refreshEmployees(context),
                    );
                  }),
            );
          }
        },
      ),
    );
  }

  Widget _floatingActionButtonCustomers() {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      FloatingActionButton(
        heroTag: 'add_customer_button',
        onPressed: _showAddCustomerDialog,
        tooltip: 'Добавить покупателя',
        child: const Icon(Icons.add),
      ),
      const SizedBox(height: 12),
      FloatingActionButton(
        heroTag: 'seach_customer_button',
        onPressed: _showFindCustomersDialog,
        tooltip: 'Искать покупателя',
        child: const Icon(Icons.search),
      ),
    ]);
  }

  Widget _floatingActionButtonEmployees() {
    return FloatingActionButton(
      heroTag: 'add_employee_button',
      onPressed: _showAddEmployeeDialog,
      tooltip: 'Добавить сотрудника',
      child: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_bottomNavigationBarCurrentIndex == 0
            ? 'Покупатели'
            : 'Сотрудники'),
        actions: [
          IconButton(
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Вы уверены что хотите выйти?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Нет'),
                          ),
                          TextButton(
                            onPressed: () async {
                              await deleteAccessToken();
                              final refreshToken = await getRefreshToken();
                              if (refreshToken != null) {
                                await authServiceClient.logout(LogoutRequest(refreshToken: refreshToken));
                                await deleteRefreshToken();
                              }

                              if (context.mounted) {
                                Navigator.of(context)
                                  ..pop()
                                  ..pushReplacementNamed('/auth');
                              }
                            },
                            child: const Text('Да'),
                          ),
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: _bottomNavigationBarCurrentIndex == 0
          ? _customerList()
          : _employeeList(),
      floatingActionButton: _bottomNavigationBarCurrentIndex == 0
          ? _floatingActionButtonCustomers()
          : _floatingActionButtonEmployees(),
      bottomNavigationBar: _isAdmin ? BottomNavigationBar(
        currentIndex: _bottomNavigationBarCurrentIndex,
        onTap: _bottomNavigationBarOnTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Покупатели",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: "Сотрудники",
          ),
        ],
      ) : null,
    );
  }
}
