import 'package:bitesbee/navigation/nav_pages.dart';
import 'package:bitesbee/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     backgroundColor: const Color(0xffFFC545)
    //   ),
    //   home:
    // );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: const Color(0xffFFC545)
      ),
      home: const SplashScreen(),
    );
  }
}

