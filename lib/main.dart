import 'package:ecom/core/constants/appfonts.dart';
import 'package:ecom/features/splash/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        fontFamily: Appfonts.josFamily,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
