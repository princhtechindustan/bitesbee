import 'package:bitesbee/data/models/auth.dart';
import 'package:bitesbee/data/models/common_response.dart';
import 'package:bitesbee/data/models/otp_model.dart';
import 'package:bitesbee/data/services/api_services.dart';
import 'package:bitesbee/data/services/preference_manager.dart';
import 'package:bitesbee/route/pages_routes.dart';
import 'package:bitesbee/widgets/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class LoginController extends GetxController {
  var apiServices = Get.put(ApiServices());
  TextEditingController otpInputController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool isOTPSent = false;
  var preferenceManager = Get.find<PreferenceManager>();
  String phoneNumber = "";

  @override
  void onInit() {
    super.onInit();
  }

  // loginWIthOtp(Authentication? authentication) async{
  //   try {
  //     var response = await apiServices.sendOTP(authentication);
  //      if (response.statusCode==200) {
  //         Get.toNamed(AppRoutes.OTPSCREEN);
  //         update();
  //      }
  //      throw(response);
  //   }
  //   catch (e) {
  //     print(e);
  //     update();
  //   }
  // }

  loginWithOtp() async {
    try {
      phoneNumber = phoneController.text;
      var response = await apiServices.sendOTP(phoneController.text.toString());
      if (response.statusCode == 200 && response.data != null) {
        isOTPSent = true;
        CommonResponse otpResponse = CommonResponse.fromJson(response.data);
        showToast(otpResponse.message ?? "");
        Get.toNamed(AppRoutes.OTPSCREEN);
        update();
      } else {
        throw (response);
      }
    } catch (e) {
      print(e);
    }
  }
}
