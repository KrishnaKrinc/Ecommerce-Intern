import 'package:ecom/views/pagelayouts/Productpage/productpage_appbar.dart';
import 'package:ecom/views/pagelayouts/Productpage/productpage_body.dart';
import 'package:ecom/views/pagelayouts/Productpage/productpage_categoriesbar.dart';
import 'package:flutter/material.dart';

class ProductpageLayout extends StatelessWidget {
  const ProductpageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProductpageAppbar(),
        ProductpageCategoriesBar(),
        ProductpageBody(),
      ],
    );
  }
}
