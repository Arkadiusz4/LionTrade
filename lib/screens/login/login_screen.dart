import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lion_trade/screens/login/login/cubit/login_cubit.dart';
import 'package:lion_trade/screens/login/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Page page() => const MaterialPage<void>(child: LoginScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (BuildContext context, LoginState state) {
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
