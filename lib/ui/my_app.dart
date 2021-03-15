import 'package:aba_clone/common/constants/route_name.dart';
import 'package:aba_clone/di/home_binding.dart';
import 'package:aba_clone/di/notification_binding.dart';
import 'package:aba_clone/ui/controllers/notification_controller.dart';
import 'package:aba_clone/ui/screen/home/home_screen.dart';
import 'package:aba_clone/ui/screen/notification/notification_screen.dart';
import 'package:aba_clone/ui/screen/schedule_payment/schedule_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.home,
      getPages: [
        GetPage(
          name: RouteName.home,
          page: () => HomeScreen(),
          transition: Transition.rightToLeft,
          binding: HomeBinding(),
        ),
        GetPage(
          name: RouteName.contactUs,
          page: () => HomeScreen(),
          transition: Transition.rightToLeft,
          binding: HomeBinding(),
        ),
        GetPage(
          name: RouteName.notification,
          page: () => NotificationScreen(),
          transition: Transition.rightToLeft,
          binding: NotificationBinding(),
        ),
        GetPage(
          name: RouteName.schedulePayment,
          page: () => SchedulePaymentScreen(),
          transition: Transition.rightToLeft,
        ),
      ],
    );
  }
}
