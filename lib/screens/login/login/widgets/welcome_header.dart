import 'package:flutter/material.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/helpers/_helpers.dart';
import 'package:lion_trade/style/_style.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.0,
          width: 200.0,
          child: Image.asset(
            ImageConstants.welcomeChart,
          ),
        ),
        Text(
          S.current.welcomeText,
          style: LtTextStyle.inter14medium,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lion',
              style: LtTextStyle.inter36regular,
            ),
            Text(
              'Trade',
              style: LtTextStyle.customize(
                color: LtColor.orange,
                fontSize: 36.0,
                LtFontWeight: LtFontWeight.regular,
              ),
            ),
          ],
        )
      ],
    );
  }
}
