import 'package:flutter/material.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/helpers/svg_constants.dart';
import 'package:lion_trade/theme/colors.dart';
import 'package:lion_trade/widgets/buttons/_buttons.dart';

class LoginButtonsSection extends StatelessWidget {
  const LoginButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LtElevatedButton.withSvgIcon(
          text: S.current.signUpWithGoogleButton,
          onPressed: () {},
          minWidth: MediaQuery.of(context).size.width / 2 - 40,
          color: LtColor.white,
          colorText: LtColor.navy,
          svgIconAsset: SvgConstants.google,
        ),
        LtElevatedButton.withSvgIcon(
          text: S.current.signUpWithAppleButton,
          onPressed: () {},
          minWidth: MediaQuery.of(context).size.width / 2 - 40,
          color: LtColor.white,
          colorText: LtColor.navy,
          svgIconAsset: SvgConstants.apple,
        ),
      ],
    );
  }
}