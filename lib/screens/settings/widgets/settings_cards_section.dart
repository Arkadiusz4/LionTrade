import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/widgets/cards/lt_narrow_card.dart';

class SettingsCardsSection extends StatelessWidget {
  const SettingsCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Column(
      children: [
        LtNarrowCard(title: S.current.personalInfo, icon: Icons.person, onPressed: () {}),
        LtNarrowCard(title: S.current.contactPermissions, icon: Icons.contact_mail, onPressed: () {}),
        LtNarrowCard(
          title: S.current.changePassword,
          icon: Icons.key,
          onPressed: () {},
        ),
        LtNarrowCard(title: S.current.support, icon: Icons.contact_support, onPressed: () {}),
        LtNarrowCard(title: S.current.logOut, icon: Icons.logout, iconColor: Colors.red, onPressed: _signOut),
        LtNarrowCard(
          title: S.current.deleteAccount,
          icon: Icons.delete,
          onPressed: () {},
        ),
      ],
    );
  }

  void _signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
