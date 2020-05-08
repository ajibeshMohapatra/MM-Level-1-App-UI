import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 2.0, color: Colors.black, style: BorderStyle.solid)),    
          child: Icon(Icons.arrow_back_ios),
        ),
        Text(
          'Privacy',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        Container(      //Purpose of this container?
          width: 20.0,
          height: 0.0,
        ),
      ],
    );
  }
}
