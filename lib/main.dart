import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_smart/screens/auth/login/login_body,dart.dart';
import 'package:trade_smart/screens/splash_screen/bloc/splash_screen_bloc.dart';
import 'package:trade_smart/screens/splash_screen/splash_screen_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashScreenBloc(),
      child: MaterialApp(
        title: 'Your App',
        home: Material(
          child: LoginPage(),
        ),
      ),
    );
  }
}
