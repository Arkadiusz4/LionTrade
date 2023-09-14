import 'package:flutter/material.dart';
import 'package:lion_trade/screens/settings/widgets/settings_cards_section.dart';
import 'package:lion_trade/screens/settings/widgets/user_profile_card.dart';
import 'package:lion_trade/widgets/lt_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LtAppBar(
        title: "Settings",
        onPressed: () {},
        icon: Icons.home,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            UserProfileCard(),
            SettingsCardsSection(),
          ],
        ),
      ),
    );
  }
}
