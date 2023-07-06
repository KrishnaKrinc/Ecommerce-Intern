import 'package:ecom/styles/styles.dart';
import 'package:ecom/utils/colors.dart';
import 'package:ecom/widgets/elevated_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 100,
      child: CustomElevatedButton(
        backgroundColor: ThemeColors.white,
        onPressed: () {
          print('Login Pressed');
        },
        child: const Text('Login', style: Styles.buttonTextStyle),
      ),
    );
  }
}
