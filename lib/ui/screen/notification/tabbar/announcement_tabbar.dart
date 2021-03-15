import 'package:aba_clone/ui/controllers/notification_controller.dart';
import 'package:aba_clone/ui/screen/notification/announcement_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnnouncementTabBar extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: ListView.builder(
          itemCount: notificationController.listAnnouncementNotification.length,
          itemBuilder: (BuildContext context, int index) {
            return AnnouncementItem(
              notificationAnnouncementModel:
                  notificationController.listAnnouncementNotification[index],
            );
          },
        ),
      ),
    );
  }
}
