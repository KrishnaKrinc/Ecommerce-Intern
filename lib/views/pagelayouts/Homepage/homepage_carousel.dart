// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/arrowLeft.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/arrowRight.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/carousel.dart';
import 'package:ecom/widgets/custom_arrows.dart';
import 'package:flutter/material.dart';

class HomepageBanner extends StatefulWidget {
  const HomepageBanner({super.key});

  @override
  State<HomepageBanner> createState() => _HomepageBannerState();
}

class _HomepageBannerState extends State<HomepageBanner> {
  //
  int activeCarouselIndex = 0;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    CustomArrow customArrow = CustomArrow(size: size);
    return Stack(
      children: [
        Carousel(
          controller: buttonCarouselController,
        ),
        PositioningLeftArrow(
          buttonCarouselController: buttonCarouselController,
          customArrow: customArrow,
          size: size,
        ),
        PositioningRightArrow(
          buttonCarouselController: buttonCarouselController,
          customArrow: customArrow,
          size: size,
        )
      ],
    );
  }
}
