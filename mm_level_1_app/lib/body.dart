import 'package:flutter/material.dart';
import './head.dart';
import './button.dart';
import './option.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Heading(),
          Option(),
          Button(),
        ],
      ),
    );
  }
}
