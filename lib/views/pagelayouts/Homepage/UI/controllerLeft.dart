import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/widgets/custom_arrows.dart';
import 'package:flutter/material.dart';

class ControllerLeftArrow extends StatelessWidget {
  const ControllerLeftArrow({
    Key? key,
    this.scrollController,
    required this.buttonCarouselController,
    required this.customArrow,
    required this.size,
  }) : super(key: key);

  final ScrollController? scrollController;
  final CarouselController? buttonCarouselController;
  final CustomArrow customArrow;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (buttonCarouselController != null) {
          buttonCarouselController!.previousPage();
        } else if (scrollController != null) {
          final currentPosition = scrollController!.position.pixels;
          final targetPosition = currentPosition - size.width / 2;
          scrollController!.animateTo(
            targetPosition,
            duration: Duration(milliseconds: 1000),
            curve: Curves.fastOutSlowIn,
          );
        }
      },
      child: customArrow.leftArrow(),
    );
  }
}
