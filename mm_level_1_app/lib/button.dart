import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 250.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.black,
            padding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: new Text(
              'Save',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
