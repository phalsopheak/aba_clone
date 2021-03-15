import 'package:flutter/material.dart';

class IconItem extends StatelessWidget {
  final Icon icon;
  final Function onPressed;
  const IconItem({Key key, this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: icon,
      ),
    );
  }
}
