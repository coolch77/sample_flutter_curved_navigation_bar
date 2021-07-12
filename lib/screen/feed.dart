import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../navi_bar_key.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: ElevatedButton(
          child: Text(
            'This is Feed Screen, Continue shopping',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            final CurvedNavigationBarState? navBarState =
                NaviBarKey.getKey().currentState as CurvedNavigationBarState?;
            navBarState?.setPage(1);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
          ),
        ),
      ),
    );
  }
}
