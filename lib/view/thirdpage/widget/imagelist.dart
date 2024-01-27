import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  const ImageList(
      {super.key,
      required this.title,
      required this.list,
      required this.sidetitle});
  final String title;
  final String sidetitle;
  final List list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 17),
              ),
              const Text(
                "*",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.56,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  sidetitle,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length + 1,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: list.length == index
                    ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 0.5)),
                        height: 100,
                        width: 100,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage(
                                    "assets/icons/outline-image-1 1.png")),
                            Text(
                              "写真を追加",
                              style: TextStyle(fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 0.5),
                            image: DecorationImage(
                                image: AssetImage(list[index]),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 100,
                      ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class ImageList2 extends StatelessWidget {
  const ImageList2({super.key, required this.list});
  final List list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.5),
                      image: DecorationImage(
                          image: AssetImage(list[index]), fit: BoxFit.cover)),
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
