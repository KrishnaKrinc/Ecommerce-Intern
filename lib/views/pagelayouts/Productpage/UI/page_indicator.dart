import 'package:ecom/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator(
      {super.key, required this.totalPages, required this.onChange});
  final int totalPages;
  final void Function(int)? onChange;

  @override
  Widget build(BuildContext context) {
    return NumberPaginator(
      numberPages: totalPages,
      config: NumberPaginatorUIConfig(
          buttonUnselectedForegroundColor: ThemeColors.black),
      onPageChange: onChange,
    );
  }
}
