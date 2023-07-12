// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class filterGenerator extends StatelessWidget {
  const filterGenerator({
    super.key,
    required this.trueCategories,
    required this.onpressed,
  });

  final List<String> trueCategories;
  final void Function(String category) onpressed;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: (1.5 / .4),
      ),
      itemCount: trueCategories.length,
      itemBuilder: (context, index) {
        final category = trueCategories[index];
        return Container(
          width: 10,
          height: 20,
          color: Color.fromARGB(255, 177, 176, 176),
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    onpressed(category);
                  },
                ),
              ),
              Expanded(
                child: Text(category),
              ),
            ],
          ),
        );
      },
    );
  }
}
