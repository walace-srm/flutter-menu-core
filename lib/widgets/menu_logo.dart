import 'package:flutter/material.dart';

class MenuLogo extends StatelessWidget {
  MenuLogo({
    Key key,
    this.fontSize = 40,
  }) : super(key: key);

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: fontSize / 3.5),
      child: Text(
        'Menu',
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
