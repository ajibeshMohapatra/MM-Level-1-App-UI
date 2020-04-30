import 'package:flutter/material.dart';
import './switch.dart';

class Option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: _options(
              'Activity Status',
              '',
            )),
            SwitchWidget(true),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: _options(
              'Private Account',
              'Only people you approve can see your photos and videos',
            )),
            SwitchWidget(false),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: _options(
              'Location',
              '',
            )),
            SwitchWidget(true),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: _options(
              'Permission to tag',
              '',
            )),
            SwitchWidget(true),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: _options(
              'Date of year',
              'Do you want to show this year to public or not?',
            )),
            SwitchWidget(false),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: _options(
              'Save to archieve',
              'Automatically save photos and video to your archieve',
            )),
            SwitchWidget(true),
          ],
        ),
      ],
    );
  }
}

ListTile _options(
  String title,
  String subtitle,
) =>
    ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
    );
