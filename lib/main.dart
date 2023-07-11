import 'package:ecom/routes/routes.dart';
import 'package:ecom/views/pages/homepage.dart';
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
      theme: ThemeData(
          // Your app theme
          ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.filter,
      getPages: Routes.routes,
    );
  }
}
