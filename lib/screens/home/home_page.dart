import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lion_trade/screens/news/news_page.dart';
import 'package:lion_trade/screens/portfolio/portfolio_page.dart';
import 'package:lion_trade/screens/settings/settings_page.dart';
import 'package:lion_trade/screens/stock/stock_page.dart';
import 'package:lion_trade/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user!.email!),
            ElevatedButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}
