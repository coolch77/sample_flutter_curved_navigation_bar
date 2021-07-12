import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../navi_bar_key.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: ElevatedButton(
          child: Text(
            'This is Message Screen, Continue shopping',
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
            backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}
