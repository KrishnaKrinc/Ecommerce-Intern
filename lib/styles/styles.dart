import 'package:flutter/material.dart';

class Styles {
  static const TextStyle productNameStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle productPriceStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );

  static const TextStyle productRatingStyle = TextStyle(
    fontSize: 12,
    color: Colors.grey,
  );

  static const TextStyle productDescriptionStyle = TextStyle(
    fontSize: 14,
    color: Colors.black,
  );

  static const TextStyle appBarTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );

  static const BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(8)),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        offset: Offset(0, 2),
        blurRadius: 4,
      ),
    ],
  );
}
