import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitek_machinetask/view/firstpage/firstpage.dart';
import 'package:jiitek_machinetask/view/secondpage/second_page.dart';
import 'package:jiitek_machinetask/view/thirdpage/third_page.dart';

class BottomNavController extends GetxController {
  RxInt selectedIndex = 0.obs;

  changepage(var index) {
    selectedIndex.value = index;
  }

  //  pages list
  final List pages = [
    const FirstPage(),
    const SecondPage(),
    const Center(
      child: Text('Scan Page'),
    ),
    const Center(
      child: Text('Chat Page'),
    ),
    const ThirdPage(),
  ];
}
