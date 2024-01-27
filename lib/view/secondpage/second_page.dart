import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';
import 'package:jiitek_machinetask/view/secondpage/widgets/listschedule.dart';
import 'package:jiitek_machinetask/view/secondpage/widgets/starcontainer.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstants.appbarcolor2,
      // appbar

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: height * 0.1,
        backgroundColor: ColorConstants.appbarcolor2,
        // titleSpacing: 30,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: ColorConstants.circulravatar,
            radius: 15,
            child: Center(
                child: Icon(
              Icons.arrow_back_ios_new,
              size: 17,
              color: ColorConstants.primaryWhite,
            )),
          ),
        ),
        title: Text(
          "スタンプカード詳細",
          style: TextStyle(
              fontSize: 17,
              color: ColorConstants.primaryWhite,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/minus-circle.png"))
        ],
      ),

      body: Column(
        children: [
          // extended app bar
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mer キッチン',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.primaryWhite),
                  textAlign: TextAlign.center,
                ),
                RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                          text: '現在の獲得数',
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConstants.primaryWhite,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: '30 ',
                          style: TextStyle(
                              color: ColorConstants.primaryWhite,
                              fontSize: 28,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: '個',
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConstants.primaryWhite,
                              fontWeight: FontWeight.w400))
                    ]))
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(22)),
                  color: ColorConstants.primaryWhite),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // star grid
                    StarContainer(),
                    Padding(
                      padding: EdgeInsets.only(left: 15),

                      // heading
                      child: Text(
                        "スタンプ獲得履歴",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),

                    // listview
                    ListSchedule(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
