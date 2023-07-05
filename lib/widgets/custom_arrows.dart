import 'package:flutter/material.dart';

class CustomArrow {
  static Widget leftArrow() {
    return Container(
      width: 50,
      height: 100,
      color: Colors.white,
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {},
      ),
    );
  }

  static Widget rightArrow() {
    return Container(
      width: 50,
      height: 100,
      color: Colors.white,
      child: IconButton(
        icon: Icon(Icons.arrow_forward_ios),
        onPressed: () {},
      ),
    );
  }
}
