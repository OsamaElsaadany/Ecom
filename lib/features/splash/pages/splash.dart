import 'package:ecom/core/constants/appimages.dart';
import 'package:ecom/core/functions/navigation.dart';
import 'package:ecom/features/welcome/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      pushrmv(context, Welcome());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SvgPicture.asset(Appimages.splashSvg)));
  }
}
