import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
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
          );
  }
}