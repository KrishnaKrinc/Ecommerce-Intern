import 'package:flutter/material.dart';

class ProductCardUI extends StatelessWidget {
  final int index;
  final int startIndex;

  const ProductCardUI({
    super.key,
    required this.startIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text('Product ${startIndex + index + 1}'),
      ),
    );
  }
}
