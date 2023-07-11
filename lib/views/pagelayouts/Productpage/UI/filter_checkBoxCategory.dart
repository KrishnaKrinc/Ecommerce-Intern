import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class CheckBoxCategory extends StatelessWidget {
  //
  const CheckBoxCategory({
    Key? key,
    required this.value,
    required this.categoryText,
    required this.size,
    required this.onChanged,
  }) : super(key: key);
  final bool value;
  final String categoryText;
  final Size size;
  final Function(bool?) onChanged;
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
          Text(
            categoryText,
            style: Styles.headerStyleLight2,
          ),
        ],
      ),
    );
  }
}
