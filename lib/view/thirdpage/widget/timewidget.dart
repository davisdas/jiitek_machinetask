import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';

class TimeWidget extends StatelessWidget {
  final String title;
  final String from;
  final String to;
  final bool drop;
  const TimeWidget(
      {super.key,
      required this.from,
      required this.to,
      required this.title,
      required this.drop});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 17),
              ),
              const Text(
                "*",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          // time range
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // from
                  Container(
                    width: width * 0.35,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          from,
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryBlack.withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        drop == true
                            ? Icon(
                                Icons.expand_more,
                                color: ColorConstants.primaryBlack
                                    .withOpacity(0.7),
                                size: 30,
                              )
                            : const SizedBox()
                      ],
                    )),
                  ),

                  // divider
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '~',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),

                  // to
                  Container(
                    width: width * 0.35,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          to,
                          style: TextStyle(
                              color:
                                  ColorConstants.primaryBlack.withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        drop == true
                            ? Icon(
                                Icons.expand_more,
                                color: ColorConstants.primaryBlack
                                    .withOpacity(0.7),
                                size: 30,
                              )
                            : const SizedBox()
                      ],
                    )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
