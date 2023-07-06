import 'package:ecom/layout/resposive_layout.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/desktop_appbar.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/mobile_appbar.dart';
import 'package:flutter/material.dart';

class HomepageAppbarTitle extends StatelessWidget {
  const HomepageAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return ResponsiveLayout(
      //mobile
      mobile: MobileAppbar(size: size),

      //tablet
      tablet: DesktopAppbar(size: size),

      //desktop
      desktop: DesktopAppbar(size: size),
    );
  }
}
