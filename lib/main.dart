import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitek_machinetask/view/bottom_nav/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
