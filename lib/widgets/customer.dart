import 'package:diva/api.dart';
import 'package:diva/generated/customers.pb.dart';
import 'package:diva/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';

class CustomerWidget extends StatelessWidget {
  const CustomerWidget(
      {super.key, required this.customer, required this.onUpdate});

  final Customer customer;
  final Future<void> Function() onUpdate;

  Future<void> _updateCustomer(BuildContext context, Int64 customerId,
      {String? fullName, String? phoneNumber, int? discount}) async {
    return await makeGrpcCall(context, () async {
      final accessToken = await getAccessToken() ?? '';

      await customersServiceClient.updateCustomer(
          UpdateCustomerRequest(
              id: customerId,
              fullName: fullName,
              phoneNumber: phoneNumber,
              discount: discount),
          options:
              CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
    });
  }

  Future<void> _deleteCustomer(BuildContext context, Int64 customerId) async {
    return await makeGrpcCall(context, () async {
      final accessToken = await getAccessToken() ?? '';

      await customersServiceClient.deleteCustomer(
          DeleteCustomerRequest(id: customerId),
          options:
              CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
    });
  }

  void _showConfirmDeletingCustomerDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Удалить покупателя?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Нет'),
              ),
              TextButton(
                onPressed: () async {
                  await _deleteCustomer(context, customer.id);
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

  void _showUpdateCustomerDialog(BuildContext context) {
    final fullNameController = TextEditingController(text: customer.fullName);
    final phoneNumberController =
        TextEditingController(text: customer.phoneNumber);
    final discountController =
        TextEditingController(text: customer.discount.toString());

    final formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) {
        return Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: AlertDialog(
                title: const Text('Изменить покупателя'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
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
                              })),
                    ),
                  ],
                ),
                actions: <Widget>[
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          _showConfirmDeletingCustomerDialog(context);
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
                        await _updateCustomer(context, customer.id,
                            fullName: fullNameController.text,
                            phoneNumber: phoneNumberController.text,
                            discount: int.parse(discountController.text));
                        await onUpdate();
                        if (context.mounted) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text('ОК'),
                    ),
                  ]),
                ]));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          _showUpdateCustomerDialog(context);
        },
        child: Card(
          margin: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      customer.fullName,
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 1.2),
                    ),
                    Text(
                      customer.phoneNumber,
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 1.2),
                    ),
                  ],
                ),
                Text(
                  "${customer.discount.toString()}%",
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 1.5),
                )
              ],
            ),
          ),
        ));
  }
}
