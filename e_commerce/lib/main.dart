import 'package:flutter/material.dart';
import 'package:untitled/view/screens/home_screen.dart';
import 'package:untitled/view/screens/splash/splash_screen.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
