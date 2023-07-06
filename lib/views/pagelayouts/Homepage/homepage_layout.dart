
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
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HomepageAppbar(),
            HomepageCategories(),
            HomepageBanner(),
            HomepageProductCards(),
          ],
        ),
      ),
    );
  }
}
