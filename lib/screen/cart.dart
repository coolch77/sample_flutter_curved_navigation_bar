import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluid_navigation_bar/navi_bar_key.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: ElevatedButton(
          child: Text(
            'This is Cart Screen, Continue shopping',
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
            backgroundColor: MaterialStateProperty.all(Colors.amber),
          ),
        ),
      ),
    );
  }
}
