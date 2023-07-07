import 'package:ecom/views/pagelayouts/Productpage/UI/category_description.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/category_title.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/product_displaycards.dart';
import 'package:flutter/material.dart';

class ProductpageBody extends StatelessWidget {
  const ProductpageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CategoryTitle(),
        CategoryDescription(),
        ProductDisplayCards(),
      ],
    );
  }
}
