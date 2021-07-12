import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../navi_bar_key.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: ElevatedButton(
          child: Text(
            'This is Account Screen,  shopping',
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
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
