import 'package:flutter/material.dart';

class HomepageAppbarTitle extends StatelessWidget {
  const HomepageAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          hoverColor: Colors.transparent,
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            print('Burger Menu Pressed');
          },
        ),
        IconButton(
          hoverColor: Colors.transparent,
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          onPressed: () {
            print('Shoping Icon tapped');
          },
        ),
      ],
    );
  }
}
