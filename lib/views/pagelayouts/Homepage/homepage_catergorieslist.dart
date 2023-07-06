import 'package:ecom/views/pagelayouts/Homepage/homepage_categoriescard.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.catergoriesList,
  });

  final List catergoriesList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1350,
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: catergoriesList.length,
        itemBuilder: (context, index) {
          return CategoriesCard(
            catergoriesList: catergoriesList,
            index: index,
          );
        },
      ),
    );
  }
}
