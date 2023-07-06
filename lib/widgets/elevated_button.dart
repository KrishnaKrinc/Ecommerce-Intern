import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Function onPressed;
  const CustomElevatedButton(
      {super.key,
      required this.child,
      required this.backgroundColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Login Pressed');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      child: child,
    );
  }
}
