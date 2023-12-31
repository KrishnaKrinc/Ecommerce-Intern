import 'package:ecom/routes/routes.dart';
import 'package:ecom/styles/styles.dart';
import 'package:ecom/utils/colors.dart';
import 'package:ecom/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdCard extends StatelessWidget {
  const AdCard({required this.width, super.key});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 150,
              child: const Center(
                child: Text(
                  "Best of Electronics",
                  style: Styles.productStyle,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: CustomElevatedButton(
              backgroundColor: ThemeColors.blue,
              onPressed: () => Get.toNamed(Routes.product),
              child: const Text(
                "View All",
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: width,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://rukminim1.flixcart.com/fk-p-flap/278/278/image/7593e7b6640822c1.jpg?q=90",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
