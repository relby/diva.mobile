import 'package:diva/api.dart';
import 'package:diva/generated/employees.pbgrpc.dart';
import 'package:diva/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class EmployeeWidget extends StatelessWidget {
  const EmployeeWidget(
      {super.key, required this.employee, required this.onUpdate});

  final Employee employee;
  final Future<void> Function() onUpdate;

  Future<void> _updateEmployee(BuildContext context, UUID id,
      {String? fullName,
      String? accessKey,
      Iterable<EmployeePermission>? permissions}) async {
    return await makeGrpcCall(context, () async {
      final accessToken = await getAccessToken() ?? '';

      await employeesServiceClient.updateEmployee(
        UpdateEmployeeRequest(
            id: id,
            fullName: fullName,
            accessKey: accessKey,
            permissions:
                UpdateEmployeeRequest_Permissions(permissions: permissions)),
        options:
            CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}),
      );
    });
  }

  Future<void> _deleteEmployee(BuildContext context, UUID id) async {
    return await makeGrpcCall(context, () async {
      final accessToken = await getAccessToken() ?? '';

      await employeesServiceClient.deleteEmployee(DeleteEmployeeRequest(id: id),
          options:
              CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
    });
  }

  void _showConfirmDeletingEmployeeDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Удалить сотрудника?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Нет'),
              ),
              TextButton(
                onPressed: () async {
                  await _deleteEmployee(context, employee.id);
                  await onUpdate();
                  if (context.mounted) {
                    Navigator.of(context)
                      ..pop()
                      ..pop();
                  }
                },
                child: const Text('Да'),
              ),
            ],
          );
        });
  }

  void _showUpdateEmployeeDialog(BuildContext context) {
    final fullNameController = TextEditingController(text: employee.fullName);
    final accessKeyController = TextEditingController(text: employee.accessKey);

    final formKey = GlobalKey<FormState>();

    var canCreate = employee.permissions.any((permission) {
      return permission == EmployeePermission.CREATE;
    });
    var canUpdate = employee.permissions.any((permission) {
      return permission == EmployeePermission.UPDATE;
    });
    var canDelete = employee.permissions.any((permission) {
      return permission == EmployeePermission.DELETE;
    });

    showDialog(
        context: context,
        builder: (context) {
          return Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: AlertDialog(
                content: StatefulBuilder(builder: (contest, setState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                      TextFormField(
                        controller: accessKeyController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Введите ключ доступа';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Ключ доступа',
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  accessKeyController.clear();
                                })),
                      ),
                      CheckboxListTile(
                        title: const Text("Добавление"),
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
                        value: canDelete,
                        onChanged: (value) {
                          setState(() {
                            canDelete = !canDelete;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ],
                  );
                }),
                actions: [
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          _showConfirmDeletingEmployeeDialog(context);
                        },
                        icon: const Icon(Icons.delete_forever,
                            color: Colors.redAccent)),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Отмена'),
                    ),
                    TextButton(
                      onPressed: () async {
                        if (!formKey.currentState!.validate()) return;
                        await _updateEmployee(
                          context,
                          employee.id,
                          fullName: fullNameController.text,
                          accessKey: accessKeyController.text,
                          permissions: [
                            if (canCreate) EmployeePermission.CREATE,
                            if (canUpdate) EmployeePermission.UPDATE,
                            if (canDelete) EmployeePermission.DELETE,
                          ],
                        );
                        await onUpdate();
                        if (context.mounted) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text('ОК'),
                    ),
                  ]),
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showUpdateEmployeeDialog(context);
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            children: [
              Text(
                employee.fullName,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
