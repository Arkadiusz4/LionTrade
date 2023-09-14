import 'package:flutter/material.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/widgets/cards/lt_narrow_card.dart';

class SettingsCardsSection extends StatelessWidget {
  const SettingsCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LtNarrowCard(
            title: S.current.personalInfo,
            description: S.current.personalInfoDescription,
            icon: Icons.person,
            onPressed: () {}),
        LtNarrowCard(
            title: S.current.contactPermissions,
            description: S.current.contactPermissionsDescription,
            icon: Icons.contact_mail,
            onPressed: () {}),
        LtNarrowCard(
          title: S.current.changePassword,
          description: S.current.changePasswordDescription,
          icon: Icons.key,
          onPressed: () {},
        ),
        LtNarrowCard(
            title: S.current.support,
            description: S.current.supportDescription,
            icon: Icons.contact_support,
            onPressed: () {}),
        LtNarrowCard(
            title: S.current.logOut,
            description: S.current.logOutDescription,
            icon: Icons.logout,
            iconColor: Colors.red,
            onPressed: () {}),
        const SizedBox(height: 100.0),
        LtNarrowCard(
          title: S.current.deleteAccount,
          description: S.current.deleteAccountDescription,
          icon: Icons.delete,
          onPressed: () {},
        ),
      ],
    );
  }
}
