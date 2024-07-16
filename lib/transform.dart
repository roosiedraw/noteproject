// ignore_for_file: implementation_imports

import 'package:carousel_custom_slider/carousel_custom_slider.dart';
import 'package:flutter/material.dart';

class Transformcard extends StatelessWidget {
  const Transformcard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transformcard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselCustomSlider.transFormedCardSlider(
              height: 400,
              transformType: TransformType.skew,
              imageUrl: ["assets/images/logo.png"],
              valueScalingFactor: 0.4, //BorderSide.strokeAlignCenter
              viewportFraction: 0.7,
              customCurve: Curves.bounceInOut,
            ),
            const SizedBox(height: 15.0),
            CarouselCustomSlider.transFormedCardSlider(
              height: 400,
              transformType: TransformType.skew1,
              imageUrl: ["assets/images/logo.png"],
              valueScalingFactor: 0.3, //BorderSide.strokeAlignCenter
              viewportFraction: 0.7,
              customCurve: Curves.bounceInOut,
            ),
            const SizedBox(height: 15.0),
            CarouselCustomSlider.transFormedCardSlider(
              height: 400,
              transformType: TransformType.skew2,
              imageUrl: ["assets/images/logo.png"],
              valueScalingFactor: 0.3, //BorderSide.strokeAlignCenter
              viewportFraction: 0.7,
              customCurve: Curves.bounceInOut,
            ),
            const SizedBox(height: 15.0),
            CarouselCustomSlider.transFormedCardSlider(
              height: 400,
              transformType: TransformType.rotation,
              imageUrl: ["assets/images/logo.png"],
              valueScalingFactor: 0.3, //BorderSide.strokeAlignCenter
              viewportFraction: 0.7,
              customCurve: Curves.bounceInOut,
            ),
            const SizedBox(height: 15.0),
            CarouselCustomSlider.transFormedCardSlider(
              height: 400,
              transformType: TransformType.tryInvert,
              imageUrl: ["assets/images/logo.png"],
              valueScalingFactor: 0.3, //BorderSide.strokeAlignCenter
              viewportFraction: 0.7,
              customCurve: Curves.bounceInOut,
            ),
            const SizedBox(height: 15.0),
            CarouselCustomSlider.transFormedCardSlider(
              height: 400,
              transformType: TransformType.identity,
              imageUrl: ["assets/images/logo.png"],
              valueScalingFactor: 0.3, //BorderSide.strokeAlignCenter
              viewportFraction: 0.7,
              customCurve: Curves.bounceInOut,
            ),
          ],
        ),
      ),
    );
  }
}
