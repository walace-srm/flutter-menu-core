import 'package:flutter/material.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({
    Key key,
    this.itemCount,
    this.itemBuilder,
  }) : super(key: key);

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: ListView.separated(
        itemBuilder: itemBuilder,
        separatorBuilder: (context, i) => Divider(
          height: 1,
          indent: 68,
        ),
        itemCount: itemCount,
      ),
    );
  }
}
