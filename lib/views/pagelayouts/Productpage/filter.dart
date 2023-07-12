// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecom/styles/styles.dart';
import 'package:ecom/utils/colors.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/filter_checkBoxCategory.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/filter_checkBoxMenu.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/filter_generator.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/filter_priceSlider.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  //
  double _minPrice = 0.0;
  double _maxPrice = 100.0;

  final Map<String, bool> _isSubmenuVisible = {
    'Colors': false,
    'Brands': false,
    'Discounts': false,
  };
  final Map<String, bool> _checkBox = {
    'flipkart': false,
    'color1': false,
    'color2': true,
    'brand1': false,
    'brand2': false,
    'Discounts1': false,
    'Discounts2': false,
  };

  toggleVisibility(String section) {
    setState(() {
      _isSubmenuVisible[section] = !_isSubmenuVisible[section]!;
    });
  }

  isChecked(String key) {
    setState(() {
      _checkBox[key] = !_checkBox[key]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<String> trueCategories = _checkBox.entries
        .where((entry) => entry.value == true)
        .map((entry) => entry.key)
        .toList();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Filters",
                        style: Styles.headerStyle,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _checkBox.forEach((key, value) {
                              _checkBox[key] = false;
                            });
                          });
                        },
                        child: Text(
                          'Clear All',
                          style: Styles.filterClearStyle,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  filterGenerator(
                      onpressed: (String category) {
                        setState(() {
                          isChecked(category);
                        });
                      },
                      trueCategories: trueCategories)
                ]),
              ),
              Divider(
                thickness: 1,
                color: ThemeColors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CATEGORIES",
                        style: Styles.headerStyleLight2,
                      ),
                      filterSubCategory(subCategory: "Mirror"),
                      filterSubCategory(subCategory: "MirrorLess"),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: ThemeColors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PriceRangeSlider(
                    size: size,
                    minPrice: _minPrice,
                    maxPrice: _maxPrice,
                    onMinPriceChanged: (double value) {
                      setState(() {
                        _minPrice = value;
                      });
                    },
                    onMaxPriceChanged: (double value) {
                      setState(() {
                        _maxPrice = value;
                      });
                    }),
              ),
              Divider(
                thickness: 1,
                color: ThemeColors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckBoxCategory(
                  categoryText: "FlipKart Assured",
                  onChanged: (bool? value) {
                    isChecked('flipkart');
                  },
                  size: size,
                  value: _checkBox['flipkart']!,
                ),
              ),
              Divider(
                thickness: 1,
                color: ThemeColors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IntrinsicHeight(
                  child: Container(
                    width: size.width,
                    child: Column(
                      children: [
                        CheckBoxMenu(
                          textMenu: "Colors",
                          onPressed: () {
                            toggleVisibility('Colors');
                          },
                        ),
                        Expanded(
                          child: Visibility(
                            visible: _isSubmenuVisible['Colors']!,
                            child: Column(
                              children: [
                                CheckBoxCategory(
                                  categoryText: "Orange",
                                  size: size,
                                  value: _checkBox['color1']!,
                                  onChanged: (bool? value) {
                                    isChecked('color1');
                                  },
                                ),
                                CheckBoxCategory(
                                  categoryText: "Black",
                                  size: size,
                                  value: _checkBox['color2']!,
                                  onChanged: (bool? value) {
                                    isChecked('color2');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: ThemeColors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IntrinsicHeight(
                  child: Container(
                    width: size.width,
                    child: Column(
                      children: [
                        CheckBoxMenu(
                          textMenu: "Brands",
                          onPressed: () {
                            toggleVisibility('Brands');
                          },
                        ),
                        Expanded(
                          child: Visibility(
                            visible: _isSubmenuVisible['Brands']!,
                            child: Column(
                              children: [
                                CheckBoxCategory(
                                  categoryText: "Brand1",
                                  size: size,
                                  value: _checkBox['brand1']!,
                                  onChanged: (bool? value) {
                                    isChecked('brand1');
                                  },
                                ),
                                CheckBoxCategory(
                                  categoryText: "Brand2",
                                  size: size,
                                  value: _checkBox['brand2']!,
                                  onChanged: (bool? value) {
                                    isChecked('brand2');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: ThemeColors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class filterSubCategory extends StatelessWidget {
  //
  const filterSubCategory({super.key, required this.subCategory});
  final String subCategory;
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          IconButton(
            iconSize: 15,
            icon: Icon(Icons.arrow_back_ios_sharp),
            onPressed: () {},
          ),
          Text(subCategory),
        ],
      ),
    );
  }
}
