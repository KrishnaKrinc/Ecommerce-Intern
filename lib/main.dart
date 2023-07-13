import 'package:ecom/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      getPages: Routes.routes,
    );
  }
}
