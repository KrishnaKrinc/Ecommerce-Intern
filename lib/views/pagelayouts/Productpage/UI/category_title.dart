import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Product Title',
      style: Styles.productStyle,
    );
  }
}
