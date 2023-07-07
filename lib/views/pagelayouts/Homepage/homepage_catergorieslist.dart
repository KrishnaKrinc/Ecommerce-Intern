import 'package:ecom/layout/resposive_layout.dart';
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
    final Size size = MediaQuery.sizeOf(context);
    return ResponsiveLayout(
      mobile: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: CategoriesTiles(
          catergoriesList: catergoriesList,
          cardWidth: size.width * 0.245,
        ),
      ),
      tablet: CategoriesTiles(
        catergoriesList: catergoriesList,
        cardWidth: 120,
      ),
      desktop: CategoriesTiles(
        catergoriesList: catergoriesList,
        cardWidth: 150,
      ),
    );
  }
}

class CategoriesTiles extends StatelessWidget {
  const CategoriesTiles({
    super.key,
    required this.catergoriesList,
    required this.cardWidth,
  });

  final List catergoriesList;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: catergoriesList.length,
        itemBuilder: (context, index) {
          return CategoriesCard(
            catergoriesList: catergoriesList,
            index: index,
            cardWidth: cardWidth,
          );
        },
      ),
    );
  }
}
