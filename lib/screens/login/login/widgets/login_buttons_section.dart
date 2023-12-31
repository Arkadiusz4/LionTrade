import 'package:flutter/material.dart';
import 'package:lion_trade/helpers/_helpers.dart';
import 'package:lion_trade/widgets/_widgets.dart';

class LoginButtonsSection extends StatelessWidget {
  const LoginButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LtCircle(
          svgAsset: SvgConstants.google,
        ),
        LtCircle(
          svgAsset: SvgConstants.facebook,
        ),
        LtCircle(
          svgAsset: SvgConstants.apple,
        ),
      ],
    );
  }
}
