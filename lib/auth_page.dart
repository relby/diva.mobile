import 'package:diva/api.dart';
import 'package:diva/generated/auth.pbgrpc.dart';
import 'package:diva/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  int _bottomNavigationBarCurrentIndex = 0;

  void _bottomNavigationBarOnTap(int index) {
    setState(() {
      _bottomNavigationBarCurrentIndex = index;
    });
  }

  Widget _buildBodyEmployeeAuth(BuildContext context) {
    final accessKeyController = TextEditingController(text: '');
    final formKey = GlobalKey<FormState>();

    return Center(
        child: Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
          margin: const EdgeInsets.all(36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: accessKeyController,
                keyboardType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(6)],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите ключ доступа';
                  }
                  if (!value.contains(RegExp(r'^[0-9]{6}$'))) {
                    return 'Ключ доступа должен состоять из 6 цифер';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Ключ доступа',
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        accessKeyController.clear();
                      }),
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                  onPressed: () async {
                    if (!formKey.currentState!.validate()) return;
                    final response = await makeGrpcCall(context, () async {
                      final response = await authServiceClient.employeeLogin(
                          EmployeeLoginRequest(
                              accessKey: accessKeyController.text));

                      return response;
                    });

                    if (response == null) {
                      return;
                    }

                    saveAccessToken(response.accessToken);
                    saveRefreshToken(response.refreshToken);

                    if (context.mounted) {
                      Navigator.of(context).pushReplacementNamed('/main');
                    }
                  },
                  child: const Text('Войти'))
            ],
          )),
    ));
  }

  Widget _buildBodyAdminAuth(BuildContext context) {
    final loginController = TextEditingController(text: '');
    final passwordController = TextEditingController(text: '');
    final formKey = GlobalKey<FormState>();

    return Center(
        child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Container(
              margin: const EdgeInsets.all(36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: loginController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Введите логин';
                      }
                      if (value.length < 3) {
                        return 'Логин должен быть 3 или более символов';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Логин',
                      suffixIcon: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            loginController.clear();
                          }),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Введите пароль';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Пароль',
                      suffixIcon: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            passwordController.clear();
                          }),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FilledButton(
                      onPressed: () async {
                        if (!formKey.currentState!.validate()) return;

                        final response =
                            await makeGrpcCall(context, () async {
                          final response = await authServiceClient.adminLogin(
                              AdminLoginRequest(
                                  login: loginController.text,
                                  password: passwordController.text));

                          return response;
                        });

                        if (response == null) {
                          return;
                        }

                        saveAccessToken(response.accessToken);
                        saveRefreshToken(response.refreshToken);

                        if (context.mounted) {
                          Navigator.of(context).pushReplacementNamed('/main');
                        }
                      },
                      child: const Text('Войти'))
                ],
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Войти")),
      body: _bottomNavigationBarCurrentIndex == 0
          ? _buildBodyEmployeeAuth(context)
          : _buildBodyAdminAuth(context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavigationBarCurrentIndex,
        onTap: _bottomNavigationBarOnTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: "Как сотрудник",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: "Как админ",
          ),
        ],
      ),
    );
  }
}
