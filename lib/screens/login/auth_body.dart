/*
import 'package:flutter/material.dart';
import 'package:lion_trade/screens/auth/register/widgets/register_form.dart';
import 'package:lion_trade/theme/colors.dart';
import 'package:lion_trade/widgets/buttons/lt_toggle_buttons.dart';

import '../../generated/l10n.dart';
import 'login/widgets/_login_widgets.dart';

class AuthBody extends StatefulWidget {
  const AuthBody({super.key});

  static Page page() => const MaterialPage<void>(child: AuthBody());

  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  int selectedFormIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              LtColor.navy,
              LtColor.black,
              LtColor.navy,
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Lion Trade",
                style: TextStyle(color: LtColor.white, fontSize: 40.0),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 50.0),
                decoration: const BoxDecoration(
                  color: LtColor.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        LtToggleButton(
                          labelText1: S.current.loginButton,
                          labelText2: S.current.registerButton,
                          onToggle: (selectedIndex) {
                            setState(() {
                              selectedFormIndex = selectedIndex;
                            });
                          },
                        ),
                        const SizedBox(height: 30.0),
                        Visibility(
                          visible: selectedFormIndex == 0,
                          child: const LoginForm(),
                        ),
                        Visibility(
                          visible: selectedFormIndex == 1,
                          child: const RegisterForm(),
                        ),
                        const SizedBox(height: 30.0),
                        Text(
                          S.current.continueWith,
                          style: const TextStyle(
                            color: LtColor.black,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const LoginButtonsSection(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */