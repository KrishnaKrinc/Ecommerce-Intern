
// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/carousel.dart';
import 'package:ecom/widgets/custom_arrows.dart';
import 'package:flutter/material.dart';

class HomepageBanner extends StatefulWidget {
  @override
  State<HomepageBanner> createState() => _HomepageBannerState();
}

class _HomepageBannerState extends State<HomepageBanner> {
  //
  int activeCarouselIndex = 0;
  CustomArrow customArrow = CustomArrow();
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Carousel(controller: buttonCarouselController),
        Positioned(
          left: 0,
          top: 80,
          child: GestureDetector(
            onTap: buttonCarouselController.previousPage,
            child: customArrow.leftArrow(),
          ),
        ),
        Positioned(
          right: 0,
          top: 80,
          child: GestureDetector(
            onTap: buttonCarouselController.nextPage,
            child: customArrow.rightArrow(),
          ),
        )
      ],
    );
  }
}
