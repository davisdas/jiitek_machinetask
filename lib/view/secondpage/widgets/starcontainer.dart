import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';

class StarContainer extends StatelessWidget {
  const StarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: width * 0.6,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: ColorConstants.primaryWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5),
          itemCount: 15,
          itemBuilder: (context, index) => Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/Group 200.png'))),
          ),
        ),
      ),
    );
  }
}
