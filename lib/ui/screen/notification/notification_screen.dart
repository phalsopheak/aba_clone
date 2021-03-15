import 'package:aba_clone/common/constants/app_color.dart';

import 'package:aba_clone/ui/screen/notification/tab_bar.dart';
import 'package:aba_clone/ui/screen/notification/tabbar/announcement_tabbar.dart';
import 'package:aba_clone/ui/screen/notification/tabbar/transaction_tabbar.dart';
import 'package:aba_clone/ui/widget/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Notification',
        leftIcon: Icon(Icons.arrow_back_ios),
        leftIconPressed: () => Get.back(),
      ),
      body: MyTabBarView(),
    );
  }
}
