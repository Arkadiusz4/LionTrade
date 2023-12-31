import 'package:flutter/material.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/helpers/_helpers.dart';
import 'package:lion_trade/screens/login/login/widgets/bottom_login_section.dart';
import 'package:lion_trade/screens/login/login/widgets/welcome_header.dart';
import 'package:lion_trade/style/_style.dart';
import 'package:lion_trade/widgets/_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      backgroundColor: LtColor.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const WelcomeHeader(),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  S.current.signInText,
                  style: LtTextStyle.inter16regular,
                ),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    // TextFormField
                    LtTextFormField(
                      controller: _emailController,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      hintText: S.current.emailHint,
                    ),
                    const Positioned(
                      left: 0,
                      child: LtCircle(
                        svgAsset: SvgConstants.email,
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    // TextFormField
                    LtTextFormField(
                      controller: _emailController,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      hintText: S.current.passwordHint,
                    ),
                    const Positioned(
                      right: 0,
                      child: LtCircle(
                        svgAsset: SvgConstants.lock,
                      ),
                    ),
                  ],
                ),
                Text(
                  S.current.forgotPasswordButton,
                  style: LtTextStyle.customize(
                      LtFontWeight: LtFontWeight.extraLight, color: LtColor.orange, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 80.0,
                ),
                const BottomLoginSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
