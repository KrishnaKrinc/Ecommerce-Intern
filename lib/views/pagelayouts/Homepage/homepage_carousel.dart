// ignore_for_file: prefer_const_constructors

import 'package:ecom/views/pagelayouts/Homepage/UI/carousel.dart';
import 'package:ecom/widgets/custom_arrows.dart';
import 'package:flutter/material.dart';

class HomepageBanner extends StatefulWidget {
  @override
  State<HomepageBanner> createState() => _HomepageBannerState();
}

class _HomepageBannerState extends State<HomepageBanner> {
  //
  CustomArrow customArrow = CustomArrow();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Carousel(),
        Positioned(
          left: 0,
          top: 80,
          child: customArrow.leftArrow(),
        ),
        Positioned(
          right: 0,
          top: 80,
          child: customArrow.rightArrow(),
        )
      ],
    );
  }
}
