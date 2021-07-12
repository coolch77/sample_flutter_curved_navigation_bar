import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../navi_bar_key.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: ElevatedButton(
          child: Text(
            'This is Home Screen, Continue shopping',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            final CurvedNavigationBarState? navBarState =
                NaviBarKey.getKey().currentState as CurvedNavigationBarState?;
            navBarState?.setPage(1);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
