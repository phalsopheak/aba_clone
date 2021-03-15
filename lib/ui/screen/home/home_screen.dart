import 'package:aba_clone/common/constants/route_name.dart';
import 'package:aba_clone/ui/controllers/home_controller.dart';

import 'package:aba_clone/ui/screen/home/body/body.dart';
import 'package:aba_clone/ui/screen/home/drawer/drawer.dart';
import 'package:aba_clone/ui/widget/app_bar/app_bar.dart';
import 'package:aba_clone/ui/widget/app_bar/icon_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeController.scaffoldState,
      appBar: CustomAppBar(
        title: 'ABA Test',
        leftIcon: Icon(Icons.menu),
        leftIconPressed: () =>
            homeController.scaffoldState.currentState.openDrawer(),
        listWidget: [
          IconItem(
            icon: Icon(Icons.notifications),
            onPressed: () => Get.toNamed(
              RouteName.notification,
            ),
          ),
          IconItem(
            icon: Icon(Icons.call),
            onPressed: () => Get.toNamed(
              RouteName.contactUs,
            ),
          )
        ],
      ),
      drawer: CustomDrawer(),
      body: Body(),
    );
  }
}
