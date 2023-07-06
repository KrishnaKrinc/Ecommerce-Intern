import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;

  final double height;
  const CustomAppBar({super.key, required this.title, required this.height});


  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,

      backgroundColor: Colors.transparent,
      elevation: 0,

      toolbarHeight: height,

    );
  }
}
