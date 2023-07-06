import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/widgets/custom_arrows.dart';
import 'package:flutter/material.dart';

class PositioningRightArrow extends StatelessWidget {
  const PositioningRightArrow({
    super.key,
    required this.buttonCarouselController,
    required this.customArrow,
    required this.size,
  });

  final CarouselController buttonCarouselController;
  final CustomArrow customArrow;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: size.height * 0.10,
      child: GestureDetector(
        onTap: buttonCarouselController.nextPage,
        child: customArrow.rightArrow(),
      ),
    );
  }
}
