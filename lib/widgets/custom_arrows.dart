import 'package:flutter/material.dart';

class CustomArrow {
  //
  Widget leftArrow() {
    return Container(
      width: 50,
      height: 100,
      color: Colors.white,
      child: Icon(Icons.arrow_back_ios),
    );
  }

  Widget rightArrow() {
    return Container(
      width: 50,
      height: 100,
      color: Colors.white,
      child: Icon(Icons.arrow_forward_ios),
    );
  }
}
