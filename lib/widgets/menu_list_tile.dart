import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    Key key,
    this.leading,
    this.trailing,
    this.title,
    this.onTap,
  }) : super(key: key);

  final Widget leading;
  final Widget trailing;
  final Widget title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.surface,
      visualDensity: VisualDensity.compact,
      leading: leading == null ? null : Container(
        alignment: Alignment.center,
        width: 36,
        child: leading,
      ),
      title: title,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
