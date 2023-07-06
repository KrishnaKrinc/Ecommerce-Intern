import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Colors.transparent,
      icon: const Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
      onPressed: () {
        print('Shoping Icon tapped');
      },
    );
  }
}
