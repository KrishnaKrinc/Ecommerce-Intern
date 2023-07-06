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
    return SizedBox(
      height: 180,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 8.0),
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
