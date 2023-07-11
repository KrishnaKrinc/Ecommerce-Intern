import 'package:ecom/views/pagelayouts/Productpage/filter.dart';
import 'package:ecom/views/pages/homepage.dart';
import 'package:ecom/views/pages/productspage.dart';
import 'package:get/get.dart';

class Routes {
  static const String home = '/';
  static const String product = '/product';
  static const String filter = '/filter';

  static final List<GetPage> routes = [
    GetPage(name: home, page: () => const Homepage()),
    GetPage(name: product, page: () => const Productspage()),
    GetPage(name: filter, page: () => const Filter()),
  ];
}
