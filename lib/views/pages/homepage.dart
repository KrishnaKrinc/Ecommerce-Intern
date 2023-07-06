import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/views/pagelayouts/Homepage/homepage_layout.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ResponsiveLayout(
          mobile: HomepageLayout(),
          tablet: HomepageLayout(),
          desktop: HomepageLayout(),
        ),
      ),
    );
  }
}
