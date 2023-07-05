import 'package:ecom/styles/styles.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/appbar_cart_button.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/appbar_title.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/login_button.dart';
import 'package:flutter/material.dart';

class HomepageAppbarTitle extends StatelessWidget {
  const HomepageAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Main Title text/ Image
        AppbarTitle(),

        //Search Bar

        SizedBox(
          width: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Login Action
              LoginButton(),

              // Cart Action
              CartButton(),
            ],
          ),
        ),
      ],
    );
  }
}
