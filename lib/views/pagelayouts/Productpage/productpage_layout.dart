// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/views/pagelayouts/Productpage/productpage_appbar.dart';
import 'package:ecom/views/pagelayouts/Productpage/productpage_body.dart';
import 'package:ecom/views/pagelayouts/Productpage/productpage_categoriesbar.dart';
import 'package:flutter/material.dart';

class ProductpageLayout extends StatelessWidget {
  const ProductpageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 240, 240, 240),
      child: Column(
        children: [
          ProductpageAppbar(),
          ResponsiveLayout(
            mobile: SizedBox.shrink(),
            tablet: SizedBox.shrink(),
            desktop: ProductpageCategoriesBar(),
          ),
          ProductpageBody(),
        ],
      ),
    );
  }
}
