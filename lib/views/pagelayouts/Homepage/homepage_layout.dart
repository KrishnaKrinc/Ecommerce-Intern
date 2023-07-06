import 'package:ecom/views/pagelayouts/Homepage/homepage_carousel.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_appbar.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_catergories.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_productcards.dart';
import 'package:flutter/material.dart';

class HomepageLayout extends StatelessWidget {
  const HomepageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomepageAppbar(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
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
