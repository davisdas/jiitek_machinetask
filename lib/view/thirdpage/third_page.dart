import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';
import 'package:jiitek_machinetask/controller/third_pagecontroller/third_pagecontroller.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/checkbox.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/checkboxlist.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/dropdown_design.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/heading.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/imagelist.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/textwidget.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/timewidget.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var thirdpagecontroller = ThirdPageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: ColorConstants.primaryGrey,
              radius: 15,
              child: Center(
                  child: Icon(
                Icons.arrow_back_ios_new,
                size: 17,
                color: ColorConstants.primaryBlack,
              )),
            ),
          ),
          title: const Text(
            "店舗プロフィール編集",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          actions: [
            SizedBox(
              height: 40,
              width: 35,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const Icon(
                    Icons.notifications_outlined,
                    size: 40,
                  ),
                  Positioned(
                      top: 6,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 8,
                        child: Text(
                          "3",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: ColorConstants.primaryWhite),
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),

        // form

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // text fields
                const TextWidget(title: "店舗名", text: "Mer キッチン"),
                const TextWidget(title: "代表担当者名", text: "123 - 4567 8910"),
                const TextWidget(title: "店舗住所", text: "大分県豊後高田市払田791-13"),

                // map
                SizedBox(
                  width: width,
                  height: width * 0.65,
                  child: Image.asset(
                    "assets/images/map.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                //// imageliststsrts

                // exterior
                ImageList(
                  title: "店舗外観",
                  list: thirdpagecontroller.exteriorImages,
                  sidetitle: "(最大3枚まで)",
                ),

                // interior
                ImageList(
                    title: "店舗内観",
                    list: thirdpagecontroller.interiorImages,
                    sidetitle: "(1枚〜3枚ずつ追加してください)"),

                //food
                ImageList(
                    title: "料理写真）",
                    list: thirdpagecontroller.foodImages,
                    sidetitle: "(枚〜3枚ずつ追加してください"),

                //menu
                ImageList(
                    title: "料理写真）",
                    list: thirdpagecontroller.menuImages,
                    sidetitle: "(枚〜3枚ずつ追加してください"),

                ////imagelist ends

                // time
                const TimeWidget(
                    drop: true, from: "10 : 00", to: "20 : 00", title: "ランチ時間"),
                const TimeWidget(
                    drop: true, from: "11 : 00", to: "15 : 00", title: "ランチ時間"),

                //check boxes
                const ListCheckbox(),

                // dropdown design
                const DropDownDesign(),

                // price
                const TimeWidget(
                    from: "¥ 1,000", to: "¥ 2,000", title: "予算", drop: false),

                //text
                const TextWidget(
                    title: "キャッチコピー", text: "美味しい！リーズナブルなオムライスランチ！"),

                // text
                const TextWidget(title: "座席数", text: "40席"),

                // //radio buttons
                // button1
                const Heading(title: "喫煙席"),
                Row(
                  children: [
                    CheckBoxSection(
                      title: '有',
                      isChecked: true,
                    ),
                    CheckBoxSection(title: '無', isChecked: false)
                  ],
                ),

                // button2
                const Heading(title: "駐車場"),
                Row(
                  children: [
                    CheckBoxSection(
                      title: '有  ',
                      isChecked: true,
                    ),
                    CheckBoxSection(title: '無', isChecked: false)
                  ],
                ),

                // button3
                const Heading(title: "来店プレゼント"),
                Row(
                  children: [
                    CheckBoxSection(
                      title: '有（最大３枚まで',
                      isChecked: true,
                    ),
                    CheckBoxSection(title: '無', isChecked: false)
                  ],
                ),
                // //radio buttons end

                ImageList2(list: thirdpagecontroller.addon),

                // text
                const TextWidget(
                    title: "来店プレゼント名", text: "いちごクリームアイスクリーム, ジュース"),

                const SizedBox(
                  height: 20,
                ),

                // button
                Container(
                  height: height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(120, 238, 126, 66),
                            Color.fromARGB(120, 255, 200, 171),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                  child: Center(
                    child: Text(
                      '編集を保存',
                      style: TextStyle(
                          color: ColorConstants.primaryWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}
