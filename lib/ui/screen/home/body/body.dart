import 'package:aba_clone/common/constants/route_name.dart';
import 'package:aba_clone/ui/screen/home/body/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomButton(
            icon: Icon(Icons.add),
            onPressed: () => Get.toNamed(RouteName.schedulePayment),
          ),
        ],
      ),
    );
  }
}
