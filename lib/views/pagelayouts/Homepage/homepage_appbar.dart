import 'package:ecom/widgets/custom_appbar.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/homepage_appbar_title.dart';
import 'package:flutter/material.dart';

class HomepageAppbar extends StatelessWidget {
  const HomepageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60,
      width: double.infinity,
      child: CustomAppBar(
        title: HomepageAppbarTitle(),
      ),
    );
  }
}
