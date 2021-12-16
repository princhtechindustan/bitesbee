import 'dart:async';
import 'package:bitesbee/route/pages_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       const Duration(seconds: 3),
  //       () => Navigator.of(context).pushReplacement(MaterialPageRoute(
  //           builder: (BuildContext context) => const LoginPage())));
  // }

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Get.toNamed(AppRoutes.login));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFFFC545).withOpacity(1),
        body: Stack(
          children: [
            Center(child: SvgPicture.asset("image/Group 222.svg")),
            Center(
                child: SvgPicture.asset(
              'image/BitesBee1.svg',
            )),
          ],
        ));
  }
}
