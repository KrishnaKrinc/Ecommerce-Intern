import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  final Color backgroundColor;
  final double height;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.height,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      leading: null,
      backgroundColor: backgroundColor,
      elevation: 0,
      toolbarHeight: height,
    );
  }
}
