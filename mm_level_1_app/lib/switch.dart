import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  final bool switchControl;

  const SwitchWidget(this.switchControl);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwitchWidgetState(switchControl);
  }
}

class SwitchWidgetState extends State<SwitchWidget> {
  bool switchControl;

  SwitchWidgetState(this.switchControl);

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
    } else {
      setState(() {
        switchControl = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Switch(
        onChanged: toggleSwitch,
        value: switchControl,
        activeTrackColor: Colors.amber,
        activeColor: Colors.white,
        activeThumbImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Font_Awesome_5_solid_bullseye.svg/1200px-Font_Awesome_5_solid_bullseye.svg.png'),
        inactiveThumbImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Font_Awesome_5_solid_bullseye.svg/1200px-Font_Awesome_5_solid_bullseye.svg.png'),
        inactiveTrackColor: Colors.grey,
      ),
    );
  }
}
