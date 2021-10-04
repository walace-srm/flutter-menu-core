import 'package:flutter/material.dart';

class MenuButtonIcon extends StatelessWidget {
  MenuButtonIcon({
    this.iconData,
    this.onTap,
    this.iconColor,
    this.withBackgroundColor = false,
    this.size = 40,
  });

  final IconData iconData;
  final Function onTap;
  final Color iconColor;
  final bool withBackgroundColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: withBackgroundColor
          ? Theme.of(context).primaryColorLight.withOpacity(.2)
          : Colors.transparent,
      borderRadius: BorderRadius.circular(size / 2),
      child: InkWell(
        borderRadius: BorderRadius.circular(size / 2),
        child: Container(
          width: size,
          height: size,
          child: Icon(iconData, color: iconColor),
        ),
        onTap: onTap,
      ),
    );
  }
}
