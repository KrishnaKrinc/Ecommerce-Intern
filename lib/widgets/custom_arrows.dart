import 'package:ecom/layout/resposive_layout.dart';
import 'package:flutter/material.dart';

class CustomArrow {
  //
  CustomArrow({required this.size});
  final Size size;
  Widget leftArrow() {
    return Container(
      width: size.width * 0.04,
      height: size.height * 0.1,
      color: Colors.white,
      child: const Icon(Icons.arrow_back_ios),
    );
  }

  Widget rightArrow() {
    return Container(
      width: size.width * 0.04,
      height: size.height * 0.1,
      color: Colors.white,
      child: const Icon(Icons.arrow_forward_ios),
    );
  }
}
