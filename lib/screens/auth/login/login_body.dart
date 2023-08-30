import 'package:flutter/material.dart';
import 'package:lion_trade/screens/auth/login/widgets/login_buttons_section.dart';
import 'package:lion_trade/screens/auth/login/widgets/login_form.dart';
import 'package:lion_trade/theme/colors.dart';
import 'package:lion_trade/widgets/lt_toggle_buttons.dart';

import '../../../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      const SizedBox(height: 60),
                      Visibility(
                        visible: selectedFormIndex == 0,
                        child: const LoginForm(),
                      ),
                      Visibility(
                        visible: selectedFormIndex == 1,
                        child: Text('sfafasf'), // Your register form widget
                      ),
                    ],
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
