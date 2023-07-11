// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecom/styles/styles.dart';
import 'package:ecom/utils/colors.dart';
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

  final Map<String, bool> _isVisibleMap = {
    'Colors': false,
    'Brands': false,
    'Discounts': false,
  };
  final Map<String, bool> _checkBox = {
    'flipkart': false,
    'color1': false,
    'color2': false,
    'brand1': false,
    'brand2': false,
    'Discounts1': false,
    'Discounts2': false,
  };
  toggleVisibility(String section) {
    setState(() {
      _isVisibleMap[section] = !_isVisibleMap[section]!;
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
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          width: 350,
          child: IntrinsicHeight(
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
                        Text(
                          "CLEAR ALL",
                          style: Styles.filterClearStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 40,
                    color: Color.fromARGB(255, 177, 176, 176),
                    child: Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: Text("Mirror"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
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
                        Container(
                          height: 40,
                          child: Row(
                            children: [
                              IconButton(
                                iconSize: 15,
                                icon: Icon(Icons.arrow_back_ios_sharp),
                                onPressed: () {},
                              ),
                              Text("Mirror"),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          child: Row(
                            children: [
                              IconButton(
                                iconSize: 15,
                                icon: Icon(Icons.arrow_back_ios_sharp),
                                onPressed: () {},
                              ),
                              Text("MirrorLess"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: size.width,
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
                              "CLEAR",
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
                                  width: 150,
                                  child: Slider(
                                    min: 0.0,
                                    max: 1000.0,
                                    activeColor: ThemeColors.white,
                                    inactiveColor: ThemeColors.blue,
                                    divisions: 100,
                                    onChanged: (double value) {
                                      setState(() {
                                        _minPrice = value;
                                      });
                                    },
                                    value: _minPrice,
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
                                  child: Text("\$${_minPrice}"),
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
                                  width: 150,
                                  child: Slider(
                                    min: 0.0,
                                    max: 1000.0,
                                    activeColor: ThemeColors.white,
                                    inactiveColor: ThemeColors.blue,
                                    divisions: 100,
                                    onChanged: (double value) {
                                      setState(() {
                                        _maxPrice = value;
                                      });
                                    },
                                    value: _maxPrice,
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
                                  child: Text("\$${_maxPrice}"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: _checkBox['flipkart'],
                          onChanged: (bool? value) {
                            isChecked('flipkart');
                          },
                        ),
                        Text(
                          "FlipKart Assured",
                          style: Styles.headerStyleLight2,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntrinsicHeight(
                    child: Container(
                      width: size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "COLOR",
                                style: Styles.headerStyleLight2,
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_drop_down_sharp),
                                onPressed: () {
                                  toggleVisibility('Colors');
                                },
                              )
                            ],
                          ),
                          Expanded(
                            child: Visibility(
                              visible: _isVisibleMap['Colors']!,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: _checkBox['color1'],
                                        onChanged: (bool? value) {
                                          isChecked('color1');
                                        },
                                      ),
                                      Text(
                                        "Orange",
                                        style: Styles.headerStyleLight2,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: _checkBox['color2'],
                                        onChanged: (bool? value) {
                                          isChecked('color2');
                                        },
                                      ),
                                      Text(
                                        "Red",
                                        style: Styles.headerStyleLight2,
                                      ),
                                    ],
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
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntrinsicHeight(
                    child: Container(
                      width: size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Brands",
                                style: Styles.headerStyleLight2,
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_drop_down_sharp),
                                onPressed: () {
                                  toggleVisibility('Brands');
                                },
                              )
                            ],
                          ),
                          Expanded(
                            child: Visibility(
                              visible: _isVisibleMap['Brands']!,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: _checkBox['brand1'],
                                        onChanged: (bool? value) {
                                          isChecked('brand1');
                                        },
                                      ),
                                      Text(
                                        "Brand1",
                                        style: Styles.headerStyleLight2,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: _checkBox['brand2'],
                                        onChanged: (bool? value) {
                                          isChecked('brand2');
                                        },
                                      ),
                                      Text(
                                        "brand2",
                                        style: Styles.headerStyleLight2,
                                      ),
                                    ],
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
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntrinsicHeight(
                    child: Container(
                      width: size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Discounts",
                                style: Styles.headerStyleLight2,
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_drop_down_sharp),
                                onPressed: () {
                                  toggleVisibility('Discounts');
                                },
                              )
                            ],
                          ),
                          Expanded(
                            child: Visibility(
                              visible: _isVisibleMap['Discounts']!,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: _checkBox['Discounts1'],
                                        onChanged: (bool? value) {
                                          isChecked('Discounts1');
                                        },
                                      ),
                                      Text(
                                        "50% Discount",
                                        style: Styles.headerStyleLight2,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: _checkBox['Discounts2'],
                                        onChanged: (bool? value) {
                                          isChecked('Discounts2');
                                        },
                                      ),
                                      Text(
                                        "40% Discount",
                                        style: Styles.headerStyleLight2,
                                      ),
                                    ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
