import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';

class DropDownDesign extends StatelessWidget {
  const DropDownDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SingleChildScrollView(
          child: Row(
            children: [
              Text(
                "料理カテゴリー",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "*",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width * 0.6,
                height: height * 0.06,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: ColorConstants.primaryBlack.withOpacity(0.6)),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width * 0.4,
                        child: Text(
                          '料理カテゴリー選択',
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryBlack.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Icon(
                        Icons.expand_more,
                        color: ColorConstants.primaryBlack.withOpacity(0.5),
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
