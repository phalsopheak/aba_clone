import 'package:aba_clone/data/data_source/data_test.dart';
import 'package:aba_clone/data/models/notification_announcement_model.dart';
import 'package:aba_clone/data/models/notification_transaction_model.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  var listTransactionNotification = List<NotificationTransactionModel>().obs;
  var listAnnouncementNotification = List<NotificationAnnouncementModel>().obs;
  @override
  void onInit() {
    loadTransactionNotification();
    loadAnnouncementNotification();
    super.onInit();
  }

  loadTransactionNotification() async {
    listTransactionNotification.clear();
    var list = await DataTest.listNotificationTransaction();
    listTransactionNotification.assignAll(list);
  }

  loadAnnouncementNotification() async {
    listAnnouncementNotification.clear();
    var list = await DataTest.listNotificationAnnouncement();
    listAnnouncementNotification.assignAll(list);
  }
}
