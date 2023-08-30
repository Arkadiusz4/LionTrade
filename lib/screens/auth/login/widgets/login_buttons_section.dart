import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/theme/colors.dart';
import 'package:lion_trade/widgets/buttons/lt_elevated_button.dart';

class LoginButtonsSection extends StatelessWidget {
  const LoginButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            LtElevatedButton(
              text: S.current.signUpWithGoogleButton,
              onPressed: () {},
              minWidth: MediaQuery.of(context).size.width / 2 - 40,
              color: LtColor.white,
              colorText: LtColor.navy,
            ),
          ],
        ),
        LtElevatedButton(
          text: S.current.signUpWithAppleButton,
          onPressed: () {},
          minWidth: MediaQuery.of(context).size.width / 2 - 40,
          color: LtColor.white,
          colorText: LtColor.navy,
        ),
      ],
    );
  }
}
