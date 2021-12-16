import 'package:bitesbee/route/pages_routes.dart';
import 'package:bitesbee/ui/login/login_controller.dart';
import 'package:bitesbee/ui/login/login_page.dart';
import 'package:bitesbee/ui/order_page/order_page.dart';
import 'package:bitesbee/ui/splash/splash_screen.dart';
import 'package:bitesbee/ui/submit_otp/submit_controller.dart';
import 'package:bitesbee/ui/submit_otp/submit_otp.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash,
        page: () => const SplashScreen()
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: BindingsBuilder(() => Get.lazyPut(() => LoginController())),
    ),
    GetPage(name: AppRoutes.OTPSCREEN,
        page:()=> const SubmitOTP(),
        binding: BindingsBuilder(()=>Get.lazyPut(() => SubmitController())),
    ),
    GetPage(
      name: AppRoutes.OrderPage,
      page: ()=>OrderPage(),
      binding: BindingsBuilder(()=>Get.lazyPut(() => LoginController()))


    )
  ];
}
