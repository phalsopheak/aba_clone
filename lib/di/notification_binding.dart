import 'package:aba_clone/ui/controllers/home_controller.dart';
import 'package:aba_clone/ui/controllers/notification_controller.dart';
import 'package:get/get.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NotificationController>(
      NotificationController(),
    );
  }
}
