import 'package:flutter/material.dart';
import 'package:olaha_travel_app/navigation_menu/navigation_menu.dart';
import 'package:olaha_travel_app/views/splash/splash_page.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: SplashPage(),
      home: NavigationMenu(),
    );
  }
}
