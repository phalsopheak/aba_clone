import 'package:aba_clone/common/constants/app_color.dart';
import 'package:aba_clone/ui/controllers/home_controller.dart';
import 'package:aba_clone/ui/screen/home/app_bar/icon_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeController homeController = Get.find();
  final String title;

  @override
  final Size preferredSize;

  CustomAppBar({
    @required this.title,
  }) : preferredSize = Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColor.headerBackground,
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                homeController.scaffoldState.currentState.openDrawer();
              },
            ),
            Text(title),
            IconItem(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconItem(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
