import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String title;

  const TransactionItem({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Container(
        height: 50,
        color: Colors.grey[200],
        child: Text(
          title,
        ),
      ),
    );
  }
}
