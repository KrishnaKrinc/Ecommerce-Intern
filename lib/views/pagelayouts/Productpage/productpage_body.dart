import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/category_description.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/category_title.dart';
import 'package:ecom/views/pagelayouts/Productpage/product_displaycards.dart';
import 'package:flutter/material.dart';

class ProductpageBody extends StatelessWidget {
  const ProductpageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoryTitle(),
            const SizedBox(height: 5),
            const CategoryDescription(),
            const SizedBox(height: 20),
            ResponsiveLayout(
              mobile: const ProductDisplayCards(
                crossAxisCount: 2,
                horizontalSpacing: 0,
              ),
              tablet: ProductDisplayCards(
                crossAxisCount: 4,
                horizontalSpacing: MediaQuery.sizeOf(context).width / 5,
              ),
              desktop: ProductDisplayCards(
                  crossAxisCount: 5,
                  horizontalSpacing: MediaQuery.sizeOf(context).width / 4),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
