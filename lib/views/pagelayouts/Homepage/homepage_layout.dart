import 'package:ecom/views/pagelayouts/Homepage/homepage_ad_carousel.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_appbar.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_catergories.dart';
import 'package:ecom/views/pagelayouts/homepage_productcards.dart';
import 'package:flutter/material.dart';

class HomepageLayout extends StatelessWidget {
  const HomepageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          HomepageAppbar(),
          HomepageCategories(),
          HomepageBanner(),
          HomepageProductCards(),
        ],
      ),
    );
  }
}
