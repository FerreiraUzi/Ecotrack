import 'package:flutter/material.dart';
import 'package:app_ecotrack_3_b/screens/login_screen.dart';
import 'package:app_ecotrack_3_b/screens/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: LoginScreen.routeName,

      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
      },

      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}