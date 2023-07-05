import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 100,
      child: ElevatedButton(
        onPressed: () {
          print('Login Pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        child: const Text('Login', style: Styles.buttonTextStyle),
      ),
    );
  }
}
