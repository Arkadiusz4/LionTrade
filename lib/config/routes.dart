import 'package:flutter/cupertino.dart';
import 'package:lion_trade/screens/app_view/bloc/app_bloc.dart';
import 'package:lion_trade/screens/home/home_body.dart';
import 'package:lion_trade/screens/login/login_page.dart';
import 'package:lion_trade/screens/login/login_screen.dart';

List<Page> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomeBody.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
