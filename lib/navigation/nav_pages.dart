
import 'package:bitesbee/myhome_page.dart';
import 'package:bitesbee/navigation/nav_routes.dart';
import 'package:bitesbee/splash_screen.dart';
import 'package:get/get.dart';

abstract class NavigationPage{
  static final pages = [
  GetPage(
      name: NavRoutes.splash, page: () => const SplashScreen()),

  GetPage(
  name: NavRoutes.login,   page: () => const LoginPage() ),
  ];


}