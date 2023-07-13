// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecom/styles/styles.dart';
import 'package:ecom/utils/colors.dart';
import 'package:flutter/material.dart';

class PriceRangeSlider extends StatefulWidget {
  final Size size;
  final double minPrice;
  final double maxPrice;
  final Function(double) onMinPriceChanged;
  final Function(double) onMaxPriceChanged;

  const PriceRangeSlider({
    Key? key,
    required this.size,
    required this.minPrice,
    required this.maxPrice,
    required this.onMinPriceChanged,
    required this.onMaxPriceChanged,
  }) : super(key: key);

  @override
  _PriceRangeSliderState createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "PRICE",
                style: Styles.headerStyleLight2,
              ),
              Text(
                "Clear",
                style: Styles.filterClearStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Slider(
                      min: 0.0,
                      max: 1000.0,
                      activeColor: ThemeColors.blue,
                      inactiveColor: ThemeColors.grey,
                      thumbColor: ThemeColors.white,
                      divisions: 100,
                      onChanged: widget.onMinPriceChanged,
                      value: widget.minPrice,
                    ),
                  ),
                  Text(
                    "Min",
                    style: Styles.headerStyle2,
                  ),
                  Container(
                    color: ThemeColors.white,
                    width: 70,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text("\$${widget.minPrice}"),
                  ),
                ],
              ),
              Text(
                "to",
                style: Styles.headerStyleLight2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Slider(
                      min: 0.0,
                      max: 1000.0,
                      activeColor: ThemeColors.blue,
                      inactiveColor: ThemeColors.grey,
                      thumbColor: ThemeColors.white,
                      divisions: 100,
                      onChanged: widget.onMaxPriceChanged,
                      value: widget.maxPrice,
                    ),
                  ),
                  Text(
                    "Max",
                    style: Styles.headerStyle2,
                  ),
                  Container(
                    color: ThemeColors.white,
                    width: 70,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text("\$${widget.maxPrice}"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
