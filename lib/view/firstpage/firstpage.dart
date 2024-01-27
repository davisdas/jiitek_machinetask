import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';
import 'package:jiitek_machinetask/view/firstpage/widget/dateWidget.dart';
import 'package:jiitek_machinetask/view/firstpage/widget/jobview_container.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appbar

      appBar: AppBar(
        toolbarHeight: height * 0.1,
        elevation: 0,
        backgroundColor: ColorConstants.primaryWhite,
        titleSpacing: 30,
        title: Container(
          width: width * 0.8,
          decoration: BoxDecoration(
              color: ColorConstants.primaryGrey,
              borderRadius: BorderRadius.circular(16.5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '北海道, 札幌市',
              style: TextStyle(
                fontSize: 18,
                color: ColorConstants.primaryBlack,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/Filter_icon.jpg")),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {}, icon: Image.asset("assets/icons/Vector.jpg")),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                color: ColorConstants.primaryWhite,
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Image.asset(
                'assets/icons/location.png',
                width: 28,
              ),
            )),
      ),

      body: Column(
        children: [
          // orange container
          Container(
            width: width,
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: ColorConstants.bannerGradient)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  '2022年 5月 26日（木）',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.010),

          // date
          const DateWidget(),
          SizedBox(height: height * 0.010),

          //job listing
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) =>
                    JobviewContainer(width: width, index: index),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
