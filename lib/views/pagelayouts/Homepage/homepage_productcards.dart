// ignore_for_file: prefer_const_constructors

import 'package:ecom/views/pagelayouts/Homepage/UI/ProductCard.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/adCard.dart';
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
        isRightArrowVisible = (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent);
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
    return SizedBox(
      height: 370,
      child: Row(
        children: [
          AdCard(),
          Expanded(
            child: Stack(
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
                        top: 140,
                        child: GestureDetector(
                          onTap: () {
                            scrollController.animateTo(
                              scrollController.position.maxScrollExtent,
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.fastOutSlowIn,
                            );
                          },
                          child: customArrow.rightArrow(),
                        ),
                      )
                    : Positioned(
                        left: 0,
                        top: 140,
                        child: GestureDetector(
                          onTap: () {
                            scrollController.animateTo(
                              scrollController.position.minScrollExtent,
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.fastOutSlowIn,
                            );
                          },
                          child: customArrow.leftArrow(),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
