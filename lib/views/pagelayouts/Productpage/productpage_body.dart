// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/utils/colors.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/category_description.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/category_title.dart';
import 'package:ecom/views/pagelayouts/Productpage/filter.dart';
import 'package:ecom/views/pagelayouts/Productpage/product_displaycards.dart';
import 'package:flutter/material.dart';

class ProductpageBody extends StatelessWidget {
  const ProductpageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 18, right: 18, top: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveLayout(
              mobile: SizedBox.shrink(),
              tablet: Filter(),
              desktop: Filter(),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                color: ThemeColors.white,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTitle(),
                    SizedBox(height: 5),
                    CategoryDescription(),
                    SizedBox(height: 20),
                    ResponsiveLayout(
                      mobile: ProductDisplayCards(
                        crossAxisCount: 2,
                        horizontalSpacing: 20,
                      ),
                      tablet: ProductDisplayCards(
                        crossAxisCount: 4,
                        horizontalSpacing: 20,
                      ),
                      desktop: ProductDisplayCards(
                        crossAxisCount: 5,
                        horizontalSpacing: 300,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
