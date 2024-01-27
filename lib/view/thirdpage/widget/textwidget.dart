import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17),
            ),
            const Text(
              "*",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 7,
      ),
      SizedBox(
        height: 47,
        child: TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: text,
              hintStyle: TextStyle(overflow: TextOverflow.ellipsis)),
        ),
      ),
      const SizedBox(
        height: 13,
      ),
    ]);
  }
}
