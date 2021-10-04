import 'package:flutter/material.dart';
import 'package:menu_core/widgets/menu_button_icon.dart';


class MenuAppBar extends PreferredSize {
  MenuAppBar({
    this.title,
    this.withLeading = true,
    this.actions,
  });

  final Widget title;
  final bool withLeading;
  final List<Widget> actions;

  @override
  Size get preferredSize => Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        child: AppBar(
          automaticallyImplyLeading: false,
          title: title,
          leadingWidth: 40,
          leading: !withLeading ? null : MenuButtonIcon(
            iconData: Icons.chevron_left,
            onTap: () => Navigator.of(context).pop(),
          ),
          actions: actions,
        ),
      ),
    );
  }
}
