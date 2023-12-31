import 'package:ecom/views/pagelayouts/Homepage/UI/appbar_cart_button.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/appbar_title.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/login_button.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/textfield.dart';
import 'package:flutter/material.dart';

class DesktopAppbar extends StatelessWidget {
  const DesktopAppbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Main Title text/ Image
        const AppbarTitle(),

        //Search Bar
        Container(
          constraints: BoxConstraints(maxWidth: size.width / 2.7),
          child: const Row(
            children: [
              Flexible(
                child: SizedBox(
                  height: 40,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextField(),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          width: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Login Action
              LoginButton(),
              SizedBox(width: 10),

              // Cart Action
              CartButton(),
            ],
          ),
        ),
      ],
    );
  }
}
