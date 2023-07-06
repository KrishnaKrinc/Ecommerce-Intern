// ignore_for_file: prefer_const_constructors

import 'package:ecom/views/pagelayouts/Homepage/homepage_carousel.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_appbar.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_catergories.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_productcards.dart';
import 'package:flutter/material.dart';

class HomepageLayout extends StatelessWidget {
  const HomepageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        HomepageAppbar(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomepageCategories(),
                HomepageBanner(),
                HomePageProductCards(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
