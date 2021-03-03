import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.redAccent,
        width: 300,
        child: Column(
          children: [
            Text('abc'),
            Text('abc'),
          ],
        ),
      ),
    );
  }
}
