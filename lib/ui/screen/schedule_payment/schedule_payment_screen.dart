import 'package:aba_clone/ui/widget/app_bar/app_bar_gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SchedulePaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarGradient(
      title: 'Scheduled Payment',
      leftIcon: Icon(Icons.arrow_back_ios),
      leftIconPressed: () => Get.back(),
    ));
  }
}
