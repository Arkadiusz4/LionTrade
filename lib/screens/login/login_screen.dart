import 'package:flutter/material.dart';
import 'package:lion_trade/screens/login/login_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Page page() => const MaterialPage<void>(child: LoginScreen());

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
