import 'package:flutter/material.dart';

class MenuLoading extends StatelessWidget {
  const MenuLoading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        Theme.of(context).primaryColor,
      ),
    );
  }
}