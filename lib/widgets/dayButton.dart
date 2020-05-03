import 'package:flutter/material.dart';

class DayButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const DayButton({
    Key key,
    this.title,
    this.isActive = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: isActive ? Color(0xFF2B3595) : Colors.white,
      onPressed: press,
      child: Text(title,
          style: TextStyle(
            color: isActive ? Color(0xFF10EAF0) : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          )),
    );
  }
}
