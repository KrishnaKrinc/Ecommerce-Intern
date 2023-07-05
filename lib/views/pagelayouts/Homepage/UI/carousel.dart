import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // variables
  int activeCarouselIndex = 0;
  //
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 250,
      child: CarouselSlider(
        items: [
          "https://rukminim1.flixcart.com/fk-p-flap/1688/280/image/dcc27dd8f1f628b9.png?q=50",
          "https://rukminim1.flixcart.com/fk-p-flap/1688/280/image/84ae27f93c14a4e3.jpg?q=50",
          "https://rukminim1.flixcart.com/fk-p-flap/1688/280/image/8e1907ea60ae7d14.jpg?q=50"
        ].map(
          (e) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(e),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ).toList(),
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: true,
          initialPage: 0,
          height: size.height * 0.85,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) =>
              setState(() => activeCarouselIndex = index),
        ),
      ),
    );
  }
}
