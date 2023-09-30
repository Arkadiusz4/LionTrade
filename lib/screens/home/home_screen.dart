import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lion_trade/screens/home/home_page.dart';
import 'package:lion_trade/screens/news/news_page.dart';
import 'package:lion_trade/screens/portfolio/portfolio_page.dart';
import 'package:lion_trade/screens/settings/settings_page.dart';
import 'package:lion_trade/screens/stock/stock_page.dart';
import 'package:lion_trade/style/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final screens = [
    HomePage(),
    StockPage(),
    PortfolioPage(),
    NewsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.access_time_rounded, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.pages, size: 30),
      const Icon(Icons.settings, size: 30),
    ];

    return Scaffold(

      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: LtColor.white,
        backgroundColor: Colors.transparent,
        color: LtColor.navy,
        items: items,
        index: index,
        height: 60,
        onTap: (_index) {
          setState(() {
            index = _index;
          });
        },
      ),
    );
  }
}
