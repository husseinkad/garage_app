import 'package:flutter/material.dart';
import 'package:garage_app/views/homepage_screens/homepage_screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedTab = 0.obs;

  List<Widget> pages = [
    const HomePage(),
    const Center(
      child: Text("Rotation"),
    ),
    const Center(
      child: Text("Card"),
    ),
  ];

  void changeTab(int index) {
    selectedTab.value = index;
    update();
  }
}