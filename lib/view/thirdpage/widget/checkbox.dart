import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/constants/color_constants.dart';

// ignore: must_be_immutable
class CheckBoxSection extends StatefulWidget {
  final String title;
  bool isChecked;
  CheckBoxSection({super.key, required this.title, required this.isChecked});

  @override
  State<CheckBoxSection> createState() => _CheckBoxSectionState();
}

class _CheckBoxSectionState extends State<CheckBoxSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          // checkbox
          IconButton(
              onPressed: () {
                setState(() {
                  widget.isChecked = !widget.isChecked;
                });
              },
              icon: widget.isChecked
                  ? Icon(
                      Icons.check_box,
                      color: ColorConstants.orange3,
                    )
                  : Icon(
                      Icons.check_box_outline_blank,
                      color: ColorConstants.primaryBlack.withOpacity(0.5),
                    )),

          // title
          Text(
            widget.title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
