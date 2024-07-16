import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Temalar extends StatefulWidget {
  const Temalar({super.key});

  @override
  State<Temalar> createState() => _TemalarState();
}

class _TemalarState extends State<Temalar> {
  List temaList = [
    temaWidget(temaImage: "Gün Batımı", value: 2),
    temaWidget(temaImage: "Gün Batımı", value: 2),
    temaWidget(temaImage: "Gün Batımı", value: 2),
    temaWidget(temaImage: "Gün Batımı", value: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(flex: 1, child: Text("İstediğin Temayı Seç")),
              Expanded(
                flex: 4,
                child: Container(
                  child: GridView.builder(
                    itemCount: temaList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 10,
                            crossAxisCount: 2,
                            mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.black,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: temaList[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(onPressed: () {}, child: Text("devam")))
            ],
          ),
        ));
  }
}

Widget temaWidget({
  required String temaImage,
  required int value,
}) {
  return Container(
    height: 400,
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        color: Colors.deepPurple.shade200,
        borderRadius: BorderRadius.circular(10)),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/images/${temaImage}.jpg",
          fit: BoxFit.cover,
        )),
  );
}
