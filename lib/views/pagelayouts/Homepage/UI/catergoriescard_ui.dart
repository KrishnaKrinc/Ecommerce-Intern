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
        Image.network(catergoriesList[index]['url']),
        Text(
          catergoriesList[index]['CategoriesName'],
          textAlign: TextAlign.center,
          style: Styles.productNameStyle,
        ),
      ],
    );
  }
}
