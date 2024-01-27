import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';
import 'package:jiitek_machinetask/controller/bottom_navcontroller/bottom_nav_controller.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());
  final Color selectedItemColor = ColorConstants.bannerColor;
  final Color unSelectedItemColor = ColorConstants.primaryBlack;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        // body
        body:
            bottomNavController.pages[bottomNavController.selectedIndex.value],
        // bottom
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unSelectedItemColor,
          elevation: 0,
          iconSize: 32,
          currentIndex: bottomNavController.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            bottomNavController.changepage(index);
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'さがす'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.business_center), label: 'お仕事'),
            const BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                ),
                label: 'さがす'),
            BottomNavigationBarItem(
                icon: Image(
                    color: bottomNavController.selectedIndex == RxInt(3)
                        ? selectedItemColor
                        : unSelectedItemColor,
                    width: 28,
                    image: const AssetImage("assets/icons/typing.png")),
                label: 'チャット'),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'マイページ')
          ],
        ),

        floatingActionButton: InkWell(
          onTap: () => bottomNavController.changepage(2),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: ColorConstants.bannerGradient,
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/icons/scan-line.png'),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
