import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lion_trade/repositories/auth_repository.dart';
import 'package:lion_trade/screens/app_view/app.dart';
import 'package:lion_trade/screens/app_view/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();

  await Firebase.initializeApp();

  final authRepository = AuthRepository();
  await authRepository.user.first;

  runApp(App(authRepository: authRepository));
}
