import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class CategoriesCardUI extends StatelessWidget {
  const CategoriesCardUI({
    super.key,
    required this.catergoriesList,
    required this.index,
  });

  final List catergoriesList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.network(catergoriesList[index]['url'])),
        const SizedBox(height: 8),
        Expanded(
          child: Text(
            catergoriesList[index]['CategoriesName'],
            textAlign: TextAlign.center,
            style: Styles.productNameStyle,
          ),
        ),
      ],
    );
  }
}
