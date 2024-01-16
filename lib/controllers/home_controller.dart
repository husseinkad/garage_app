import 'package:flutter/material.dart';
import 'package:garage_app/views/card_balance_screen.dart';
import 'package:garage_app/views/homepage_screens/homepage_screen.dart';
import 'package:garage_app/views/path_line_screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedTab = 0.obs;

  List<Widget> pages = [
    const HomePage(),
    const PathLineScreen(),
    const CardBalanceScreen(),
  ];

  void changeTab(int index) {
    selectedTab.value = index;
    update();
  }
}