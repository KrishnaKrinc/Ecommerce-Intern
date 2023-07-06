import 'package:ecom/styles/styles.dart';
import 'package:ecom/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        print(value);
      },
      decoration: InputDecoration(
        isDense: true,
        labelText: 'Search for Products...',
        labelStyle: Styles.productDescriptionStyle,
        suffixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: ThemeColors.blue,
          ),
          hoverColor: ThemeColors.transparent,
          onPressed: () {
            print("Search Presses");
          },
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide.none,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: ThemeColors.white,
      ),
    );
  }
}
