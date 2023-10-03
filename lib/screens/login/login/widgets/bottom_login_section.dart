import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/helpers/_helpers.dart';
import 'package:lion_trade/screens/login/login/widgets/_login_widgets.dart';
import 'package:lion_trade/style/_style.dart';

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
            S.current.otherLogins,
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
