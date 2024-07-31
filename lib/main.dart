import 'package:diva/auth_page.dart';
import 'package:diva/main_page.dart';
import 'package:diva/secure_storage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diva',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/auth': (context) => const AuthPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Future.microtask(() async {
      final accessToken = await getAccessToken();

      if (!context.mounted) return;

      if (accessToken == null) {
        Navigator.of(context).pushReplacementNamed('/auth');
      } else {
        Navigator.of(context).pushReplacementNamed('/main');
      }
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
