import 'package:aba_clone/common/constants/app_color.dart';
import 'package:aba_clone/ui/controllers/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeController homeController = Get.find();
  final String title;
  final List<Widget> listWidget;
  final Icon leftIcon;
  final Function leftIconPressed;

  @override
  final Size preferredSize;

  CustomAppBar({
    @required this.title,
    @required this.leftIcon,
    this.leftIconPressed,
    this.listWidget,
  }) : preferredSize = Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
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
                  icon: leftIcon,
                  onPressed: leftIconPressed,
                  color: Colors.white,
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                listWidget == null
                    ? SizedBox.shrink()
                    : Container(
                        child: Row(
                          children: listWidget.map((x) {
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
