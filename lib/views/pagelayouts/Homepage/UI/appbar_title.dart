import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ecommerce',
      style: Styles.appBarTitleStyle,
    );
  }
}
