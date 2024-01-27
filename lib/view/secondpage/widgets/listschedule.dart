import 'package:flutter/material.dart';

class ListSchedule extends StatelessWidget {
  const ListSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) => const Column(
          children: [
            ListTile(
              title: Text(
                "2021 / 11 / 18",
                style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w400),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "スタンプを獲得しました",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              trailing: Text(
                "1 個",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                height: 0.5,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
