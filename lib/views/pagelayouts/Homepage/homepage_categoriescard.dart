import 'package:ecom/utils/colors.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/catergoriescard_ui.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.catergoriesList,
    required this.index,
    required this.cardWidth,
  });

  final List catergoriesList;
  final int index;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Card(
        elevation: 0,
        color: ThemeColors.transparent,
        child: ListTile(
          title:
              CategoriesCardUI(catergoriesList: catergoriesList, index: index),
        ),
      ),
    );
  }
}
