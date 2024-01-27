import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';
import 'package:jiitek_machinetask/constants/home_constants/home_constants.dart';
import 'package:jiitek_machinetask/controller/home_controller/home_controller.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
        constraints: const BoxConstraints(minHeight: 50),
        height: height * 0.12,
        child: ListView.builder(
          // itemCount: 31,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            int dateindex = index % 31;
            final HomeController homeController = Get.put(HomeController());
            return Obx(
              () => GestureDetector(
                onTap: () => homeController.changedate(index),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Container(
                    constraints:
                        const BoxConstraints(minHeight: 50, minWidth: 30),
                    height: height * 0.12,
                    width: height * 0.072,
                    decoration: BoxDecoration(
                        color: Rx(index) == homeController.currentdate
                            ? ColorConstants.bannerColor
                            : ColorConstants.primaryWhite,
                        borderRadius: BorderRadius.circular(9)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          HomeConstants.date[dateindex][1],
                          style: TextStyle(
                              color: Rx(index) == homeController.currentdate
                                  ? ColorConstants.primaryWhite
                                  : ColorConstants.primaryBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          HomeConstants.date[dateindex][0],
                          style: TextStyle(
                              color: Rx(index) == homeController.currentdate
                                  ? ColorConstants.primaryWhite
                                  : ColorConstants.primaryBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
