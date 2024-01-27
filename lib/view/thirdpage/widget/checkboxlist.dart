import 'package:flutter/material.dart';
import 'package:jiitek_machinetask/view/thirdpage/widget/checkbox.dart';

class ListCheckbox extends StatelessWidget {
  const ListCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        // heading
        const Row(
          children: [
            Text(
              '定休日',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "*",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
            ),
          ],
        ),

        // checkboxes
        SizedBox(
            width: double.infinity,
            child: Row(children: [
              CheckBoxSection(title: '月', isChecked: false),
              CheckBoxSection(title: '火', isChecked: false),
              CheckBoxSection(title: '水', isChecked: false),
              CheckBoxSection(title: '木', isChecked: false)
            ])),
        SizedBox(
            width: double.infinity,
            child: Row(children: [
              CheckBoxSection(title: '金', isChecked: false),
              CheckBoxSection(title: '土', isChecked: true),
              CheckBoxSection(title: '日', isChecked: true),
              CheckBoxSection(title: '祝', isChecked: true)
            ]))
      ]),
    );
  }
}
