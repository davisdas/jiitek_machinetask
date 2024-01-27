import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';
import 'package:jiitek_machinetask/view/firstpage/firstpage.dart';
import 'package:jiitek_machinetask/view/secondpage/second_page.dart';
import 'package:jiitek_machinetask/view/thirdpage/third_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
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
  final Color selectedItemColor = ColorConstants.bannerColor;
  final Color unSelectedItemColor = ColorConstants.primaryBlack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unSelectedItemColor,
        elevation: 0,
        iconSize: 32,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
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
                  color: selectedIndex == 3
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
        onTap: () => setState(() {
          selectedIndex = 2;
        }),
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
    );
  }
}
