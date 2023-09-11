import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lion_trade/repositories/auth_repository.dart';
import 'package:lion_trade/screens/login/login/cubit/login_cubit.dart';
import 'package:lion_trade/screens/login/login/widgets/_login_widgets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(context.read<AuthRepository>()),
      child: const LoginForm(),
    );
  }
}
