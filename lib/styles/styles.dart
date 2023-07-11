import 'package:flutter/material.dart';

class Styles {
  static const TextStyle headerStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle headerStyle2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle headerStyleLight2 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
  static const TextStyle productStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle productNameStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle productPriceStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.green,
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
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  static const TextStyle filterClearStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.red,
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
