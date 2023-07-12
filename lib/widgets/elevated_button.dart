import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final void Function() onPressed;
  const CustomElevatedButton(
      {super.key,
      required this.child,
      required this.backgroundColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      child: child,
    );
  }
}
