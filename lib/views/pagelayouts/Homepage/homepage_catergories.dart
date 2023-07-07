import 'package:ecom/views/pagelayouts/Homepage/homepage_catergorieslist.dart';
import 'package:flutter/material.dart';

class HomepageCategories extends StatelessWidget {
  const HomepageCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List catergoriesList = [
      {
        'CategoriesName': 'Groceries',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/29327f40e9c4d26b.png?q=100'
      },
      {
        'CategoriesName': 'Mobiles',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/22fddf3c7da4c4f4.png?q=100'
      },
      {
        'CategoriesName': 'Fashion',
        'url':
            'https://rukminim1.flixcart.com/fk-p-flap/80/80/image/0d75b34f7d8fbcb3.png?q=100'
      },
      {
        'CategoriesName': 'Electronics',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/69c6589653afdb9a.png?q=100'
      },
      {
        'CategoriesName': 'Home & Furniture',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/ab7e2b022a4587dd.jpg?q=100'
      },
      {
        'CategoriesName': 'Appliances',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/0ff199d1bd27eb98.png?q=100'
      },
      {
        'CategoriesName': 'Travel',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/71050627a56b4693.png?q=100'
      },
      {
        'CategoriesName': 'Top offers',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/f15c02bfeb02d15d.png?q=100'
      },
      {
        'CategoriesName': 'Beauty & Toys',
        'url':
            'https://rukminim1.flixcart.com/flap/80/80/image/dff3f7adcf3a90c6.png?q=100'
      },
    ];
    return CategoriesList(catergoriesList: catergoriesList);
  }
}
