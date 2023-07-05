import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
