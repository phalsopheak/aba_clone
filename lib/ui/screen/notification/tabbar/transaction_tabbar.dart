import 'package:aba_clone/ui/controllers/notification_controller.dart';
import 'package:aba_clone/ui/screen/notification/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionTabBar extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: ListView.builder(
          itemCount: notificationController.listTransactionNotification.length,
          itemBuilder: (BuildContext context, int index) {
            return TransactionItem(
              title: notificationController
                  .listTransactionNotification[index].title,
            );
          },
        ),
      ),
    );
  }
}
