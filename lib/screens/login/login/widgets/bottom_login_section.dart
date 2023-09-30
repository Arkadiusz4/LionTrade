import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lion_trade/helpers/svg_constants.dart';
import 'package:lion_trade/screens/login/login/widgets/login_buttons_section.dart';
import 'package:lion_trade/style/fonts/lt_text_style.dart';

class BottomLoginSection extends StatelessWidget {
  const BottomLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginButtonsSection(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Text(
            'You can log in via platforms or biometrics',
            style: LtTextStyle.inter16regular,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        SvgPicture.asset(SvgConstants.fingerprint),
      ],
    );
  }
}
