import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String url;
  const ProductCard({required this.url, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 350,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    url,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.all(2.0),
            child: const Center(
              child: Text(
                "Trimmers",
                style: Styles.productNameStyle,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 70,
            margin: EdgeInsets.all(2.0),
            child: const Center(
              child: Text(
                "From \$10",
                style: Styles.productPriceStyle,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.all(6.0),
            child: const Center(
              child: Text(
                "realme, Mi, Philips & more",
                style: Styles.productDescriptionStyle,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
