import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lion_trade/helpers/image_constants.dart';
import 'package:lion_trade/helpers/svg_constants.dart';
import 'package:lion_trade/screens/login/login/widgets/_login_widgets.dart';
import 'package:lion_trade/screens/login/login/widgets/welcome_header.dart';
import 'package:lion_trade/style/color/lt_gradient.dart';
import 'package:lion_trade/style/colors.dart';
import 'package:lion_trade/style/fonts/lt_font_weight.dart';
import 'package:lion_trade/style/fonts/lt_text_style.dart';
import 'package:lion_trade/widgets/form_field/_form_field.dart';
import 'package:lion_trade/widgets/shapes/lt_circle.dart';

import 'login/widgets/login_form.dart';

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
                  'Please sign in to your account',
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
                      hintText: 'fafaf',
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
                      hintText: 'fafaf',
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
                  'Forgot password?',
                  style: LtTextStyle.customize(
                      LtFontWeight: LtFontWeight.extraLight, color: LtColor.orange, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 80.0,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
