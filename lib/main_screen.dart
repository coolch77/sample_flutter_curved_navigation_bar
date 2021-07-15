import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluid_navigation_bar/navi_bar_key.dart';
import 'package:fluid_navigation_bar/screen/account.dart';
import 'package:fluid_navigation_bar/screen/cart.dart';
import 'package:fluid_navigation_bar/screen/feed.dart';
import 'package:fluid_navigation_bar/screen/home.dart';
import 'package:fluid_navigation_bar/screen/message.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int selectedIndex = 0;

  final screen = [
    HomeScreen(),
    FeedScreen(),
    MessageScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  final backgroundColor = [
    Colors.redAccent,
    Colors.greenAccent,
    Colors.deepPurple,
    Colors.amber,
    Colors.blueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        key: NaviBarKey.getKey(),
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.rss_feed,
            size: 30,
          ),
          Icon(
            Icons.messenger,
            size: 30,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
          ),
          Icon(
            Icons.person,
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: backgroundColor[selectedIndex],
        animationCurve: Curves.easeInOutQuart,
        animationDuration: Duration(milliseconds: 500),
      ),
      body: screen[selectedIndex],
    );
  }
}
