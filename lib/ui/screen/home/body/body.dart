import 'package:aba_clone/ui/screen/home/body/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Column(
        children: [
          CustomButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          CustomButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
