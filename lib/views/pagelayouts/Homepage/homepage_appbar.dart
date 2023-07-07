// ignore_for_file: prefer_const_constructors

import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/utils/colors.dart';
import 'package:ecom/widgets/custom_appbar.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/homepage_appbar_title.dart';
import 'package:flutter/material.dart';

class HomepageAppbar extends StatelessWidget {
  const HomepageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: double.infinity,
      child: ResponsiveLayout(
        mobile: CustomAppBar(
          title: HomepageAppbarTitle(),
          height: size.height / 7,
          backgroundColor: ThemeColors.blue,
        ),
        tablet: CustomAppBar(
          title: HomepageAppbarTitle(),
          height: size.height / 12,
          backgroundColor: ThemeColors.blue,
        ),
        desktop: CustomAppBar(
          title: HomepageAppbarTitle(),
          height: size.height / 12,
          backgroundColor: ThemeColors.blue,
        ),
      ),
    );
  }
}
