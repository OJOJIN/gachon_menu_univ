import 'package:flutter/material.dart';
import 'package:gachon_univ_menu/pages/home_page.dart';
import 'package:gachon_univ_menu/pages/loading_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const loadingPage()),
        GetPage(name: "/home", page: () => const homePage(), transition: Transition.fadeIn),
      ],
    );
  }
}
