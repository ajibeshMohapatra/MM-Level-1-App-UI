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
    if (switchControl == false) { //You can directly have boolean values in if, why to compare?
      setState(() {
        switchControl = true;     //When toggling bool values, instead of having two if else command, have directlt var=!var
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
        activeThumbImage: AssetImage('assets/images/switch.png'),
        inactiveThumbImage: AssetImage('assets/images/switch.png'),
        inactiveTrackColor: Colors.grey,
      ),
    );
  }
}
