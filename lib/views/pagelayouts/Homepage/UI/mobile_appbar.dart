import 'package:ecom/utils/colors.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/appbar_title.dart';
import 'package:ecom/views/pagelayouts/Homepage/UI/textfield.dart';
import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Main Title text/ Image

        const AppbarTitle(),

        Divider(
          thickness: 0.8,
          color: ThemeColors.white,
        ),

        const SizedBox(height: 10),

        //Search Bar
        Container(
          constraints: BoxConstraints(maxWidth: size.width),
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
      ],
    );
  }
}
