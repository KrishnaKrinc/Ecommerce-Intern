import 'package:ecom/utils/colors.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required int currentPage,
    required this.index,
  }) : _currentPage = currentPage;

  final int _currentPage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            _currentPage == index ? ThemeColors.blue : ThemeColors.transparent,
      ),
      child: Text(
        '${index + 1}',
        style: TextStyle(
          color: _currentPage == index ? ThemeColors.white : ThemeColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
