import 'package:aba_clone/common/constants/app_color.dart';
import 'package:flutter/material.dart';

import 'tabbar/announcement_tabbar.dart';
import 'tabbar/transaction_tabbar.dart';

class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 40,
            color: AppColor.headerBackground,
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              tabs: [
                Tab(text: 'TRANSACTION'),
                Tab(text: 'ANNOUNCEMENT'),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: TabBarView(
                children: [
                  TransactionTabBar(),
                  AnnouncementTabBar(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
