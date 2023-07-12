import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/category_description.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/category_title.dart';
import 'package:ecom/views/pagelayouts/Productpage/product_displaycards.dart';
import 'package:flutter/material.dart';

class ProductpageBody extends StatelessWidget {
  const ProductpageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 18, right: 18, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryTitle(),
            SizedBox(height: 5),
            CategoryDescription(),
            SizedBox(height: 20),
            ResponsiveLayout(
              mobile: ProductDisplayCards(crossAxisCount: 2),
              tablet: ProductDisplayCards(crossAxisCount: 4),
              desktop: ProductDisplayCards(crossAxisCount: 5),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
