// ignore_for_file: prefer_const_constructors

import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class CheckBoxMenu extends StatelessWidget {
//
  const CheckBoxMenu({
    Key? key,
    required this.textMenu,
    required this.onPressed,
  }) : super(key: key);
  final Function() onPressed;
  final String textMenu;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textMenu,
          style: Styles.headerStyleLight2,
        ),
        IconButton(
          icon: Icon(Icons.arrow_drop_down_sharp),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
