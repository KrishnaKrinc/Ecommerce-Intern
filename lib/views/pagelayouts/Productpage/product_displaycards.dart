import 'package:ecom/views/pagelayouts/Productpage/productcards_pageview_builder.dart';
import 'package:flutter/material.dart';

class ProductDisplayCards extends StatelessWidget {
  const ProductDisplayCards(
      {super.key,
      required this.crossAxisCount,
      required this.horizontalSpacing});
  final int crossAxisCount;
  final double horizontalSpacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ProductCardPageViewBuilder(
        crossAxisCount: crossAxisCount,
        horizontalSpacing: horizontalSpacing,
      ),
    );
  }
}
