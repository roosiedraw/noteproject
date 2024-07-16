import 'package:carousel_custom_slider/carousel_custom_slider.dart';
import 'package:flip_widget/flip_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:noteproject/transform.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({super.key});

  @override
  State<DiaryPage> createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.red,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image(
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/realistic-summer-background-with-vegetation_23-2148998580.jpg?w=5000")),
            ),
          ),
          Positioned(
            top: 150,
            left: 80,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.5,
              child: CarouselCustomSlider.autoScrollingWheel(
                autoPlay: false,
                height: 300,
                backgroundImageUrls: [
                  'https://img.freepik.com/free-vector/realistic-summer-background-with-vegetation_23-2148998580.jpg?w=5000',
                ],
                children: [
                  Container(
                    child: Text("günlük"),
                    color: Colors.yellow.shade200,
                    width: 200,
                    height: 300,
                  ),
                  Container(
                    child: Text("günlük"),
                    color: Colors.yellow.shade200,
                    width: 200,
                    height: 300,
                  ),
                  Container(
                    child: Text("günlük"),
                    color: Colors.yellow.shade200,
                    width: 200,
                    height: 300,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}



/*

Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          child: Container(
            width: 400,
            height: 600,
            child: GestureDetector(
              child: FlipWidget(
                key: _flipKey,
                textureSize: Size(400, 600),
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text("hello"),
                  ),
                ),
                // leftToRight: true,
              ),
              onHorizontalDragStart: (details) {
                _oldPosition = details.globalPosition;
                _flipKey.currentState?.startFlip();
              },
              onHorizontalDragUpdate: (details) {
                Offset off = details.globalPosition - _oldPosition;
                double tilt = 1 / _clampMin((-off.dy + 20) / 100);
                double percent =
                    math.max(0, -off.dx / Size(400, 600).width * 1.4);
                percent = percent - percent / 2 * (1 - 1 / tilt);
                _flipKey.currentState?.flip(percent, tilt);
              },
              onHorizontalDragEnd: (details) {
                _flipKey.currentState?.stopFlip();
              },
              onHorizontalDragCancel: () {
                _flipKey.currentState?.stopFlip();
              },
            ),
          ),
          visible: _visible,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _visible = !_visible;
              });
            },
            child: Text("Toggle"))
      ],
    );



 */
