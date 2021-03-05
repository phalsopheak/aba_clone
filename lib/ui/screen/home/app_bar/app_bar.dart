import 'package:aba_clone/common/constants/app_color.dart';
import 'package:aba_clone/ui/controllers/home_controller.dart';
import 'package:aba_clone/ui/screen/home/app_bar/icon_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeController homeController = Get.find();
  final String title;
  final List<Icon> listIcon;
  @override
  final Size preferredSize;

  CustomAppBar({
    @required this.title,
    this.listIcon,
  }) : preferredSize = Size.fromHeight(45);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColor.headerBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
              ],
            ),
            Row(
              children: [
                listIcon == null
                    ? SizedBox.shrink()
                    : Container(
                        child: Row(
                          children: listIcon.map((x) {
                            return Padding(
                              padding: EdgeInsets.all(0),
                              child: IconButton(
                                onPressed: () {},
                                icon: x,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
