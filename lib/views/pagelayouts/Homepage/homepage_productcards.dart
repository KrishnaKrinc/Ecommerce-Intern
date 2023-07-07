// ignore_for_file: prefer_const_constructors

import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/ProductCard.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/adCard.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/controllerLeft.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/controllerRight.dart';
import 'package:ecom/widgets/custom_arrows.dart';
import 'package:flutter/material.dart';

class HomePageProductCards extends StatefulWidget {
  const HomePageProductCards({super.key});

  @override
  State<HomePageProductCards> createState() => _HomePageProductCardsState();
}

class _HomePageProductCardsState extends State<HomePageProductCards> {
  //
  bool isRightArrowVisible = true;
  bool isLeftArrowVisible = false;
  ScrollController scrollController = ScrollController();
  List productImages = [
    "https://rukminim1.flixcart.com/flap/200/200/image/20c224cd52ae7a87.jpg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/xif0q/monitor/0/p/z/-original-imaggf5qqz8bnfaf.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/hair-dryer/c/t/g/philips-hp8100-46-original-imaemymzuxrnzfjb.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/ke4kjgw0/printer/f/x/7/brother-dcp-b7500d-original-imafuvbyfgt5p9fr.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/jwzabgw0/trimmer/y/4/r/sensitive-touch-expert-veet-original-imafhjh5ah7vf9zc.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/xif0q/projector/k/h/n/i9-pro-max-hd-720p-10-e03i31-led-projector-egate-original-imaghhxfshbcbk55.jpeg?q=70",
  ];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      setState(() {
        isRightArrowVisible = !(scrollController.position.pixels ==
            scrollController.position.maxScrollExtent);
        isLeftArrowVisible = !(scrollController.position.pixels ==
            scrollController.position.minScrollExtent);
      });
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    CustomArrow customArrow = CustomArrow(size: size);
    return ResponsiveLayout(
      mobile: SizedBox(
        width: size.width,
        height: 500,
        child: Column(
          children: [
            Expanded(
              child: AdCard(width: size.width),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: StackCard(
                        scrollController: scrollController,
                        productImages: productImages,
                        isRightArrowVisible: isRightArrowVisible,
                        size: size,
                        customArrow: customArrow,
                        isLeftArrowVisible: isLeftArrowVisible),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: SizedBox(
        height: 370,
        child: Row(
          children: [
            AdCard(width: 260),
            Expanded(
              child: StackCard(
                  scrollController: scrollController,
                  productImages: productImages,
                  isRightArrowVisible: isRightArrowVisible,
                  size: size,
                  customArrow: customArrow,
                  isLeftArrowVisible: isLeftArrowVisible),
            ),
          ],
        ),
      ),
      desktop: SizedBox(
        height: 370,
        child: Row(
          children: [
            AdCard(width: 260),
            Expanded(
              child: StackCard(
                  scrollController: scrollController,
                  productImages: productImages,
                  isRightArrowVisible: isRightArrowVisible,
                  size: size,
                  customArrow: customArrow,
                  isLeftArrowVisible: isLeftArrowVisible),
            ),
          ],
        ),
      ),
    );
  }
}

class StackCard extends StatelessWidget {
  const StackCard({
    super.key,
    required this.scrollController,
    required this.productImages,
    required this.isRightArrowVisible,
    required this.size,
    required this.customArrow,
    required this.isLeftArrowVisible,
  });

  final ScrollController scrollController;
  final List productImages;
  final bool isRightArrowVisible;
  final Size size;
  final CustomArrow customArrow;
  final bool isLeftArrowVisible;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          itemCount: productImages.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductCard(url: productImages[index]),
            );
          },
        ),
        isRightArrowVisible
            ? Positioned(
                right: 0,
                top: size.height * 0.2,
                child: ControllerRightArrow(
                  scrollController: scrollController,
                  buttonCarouselController: null,
                  customArrow: customArrow,
                  size: size,
                ),
              )
            : Positioned(
                left: 0,
                top: size.height * 0.2,
                child: ControllerLeftArrow(
                  scrollController: scrollController,
                  buttonCarouselController: null,
                  customArrow: customArrow,
                  size: size,
                ),
              ),
        isLeftArrowVisible
            ? Positioned(
                left: 0,
                top: size.height * 0.2,
                child: ControllerLeftArrow(
                  scrollController: scrollController,
                  buttonCarouselController: null,
                  customArrow: customArrow,
                  size: size,
                ),
              )
            : Positioned(
                right: 0,
                top: size.height * 0.2,
                child: ControllerRightArrow(
                  scrollController: scrollController,
                  buttonCarouselController: null,
                  customArrow: customArrow,
                  size: size,
                ),
              )
      ],
    );
  }
}
