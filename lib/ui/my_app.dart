import 'package:aba_clone/common/constants/route_name.dart';
import 'package:aba_clone/di/home_binding.dart';
import 'package:aba_clone/ui/screen/home/home_screen.dart';
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
      ],
    );
  }
}
