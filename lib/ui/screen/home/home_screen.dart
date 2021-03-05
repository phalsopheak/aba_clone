import 'package:aba_clone/ui/controllers/home_controller.dart';
import 'package:aba_clone/ui/screen/home/body/body.dart';
import 'package:aba_clone/ui/screen/home/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_bar/app_bar.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeController.scaffoldState,
      appBar: CustomAppBar(
        title: 'ABA Test',
        listIcon: [
          Icon(Icons.notifications),
          Icon(Icons.call),
          Icon(Icons.call)
        ],
      ),
      drawer: CustomDrawer(),
      body: Body(),
    );
  }
}
