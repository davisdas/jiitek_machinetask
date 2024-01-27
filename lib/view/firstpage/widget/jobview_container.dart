import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';
import 'package:jiitek_machinetask/constants/home_constants/home_constants.dart';

class JobviewContainer extends StatelessWidget {
  const JobviewContainer({
    super.key,
    required this.width,
    required this.index,
  });

  final double width;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 3,
                blurRadius: 6,
              ),
            ],
            color: ColorConstants.primaryWhite,
            borderRadius: BorderRadius.circular(15)),
        width: width,
        height: width * 1.15,
        child: Column(
          children: [
            // image
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(HomeConstants.image[index]),
                      fit: BoxFit.fill),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(15))),
              height: width * 0.5,
              width: width,
            ),

            //  job description
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width,
                        child: const Text(
                          "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14.5,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: const Color.fromRGBO(238, 171, 64, 0.1),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Text(
                                  "介護付き有料老人ホーム",
                                  style: TextStyle(
                                      color: ColorConstants.bannerColor),
                                ),
                              ),
                            ),
                            const Text(
                              "¥6,000",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17.5),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "5月 31日(水)08 : 00 ~ 17 : 00",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 13),
                      ),
                      SizedBox(
                        width: width * 0.81,
                        height: 20,
                        child: const Text(
                          "北海道札幌市東雲町3丁目916番地17号",
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                        ),
                      ),
                      const Text(
                        "交通費 300円",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 13),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.60,
                            height: 20,
                            child: Text(
                              "住宅型有料老人ホームひまわり倶楽部",
                              style: TextStyle(
                                  color: ColorConstants.textgrey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          ),
                          Icon(
                            Icons.favorite_border_rounded,
                            color: ColorConstants.textgrey,
                            size: 30,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
