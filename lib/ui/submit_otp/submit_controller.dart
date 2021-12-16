import 'dart:convert';

import 'package:bitesbee/data/models/login_response.dart';
import 'package:bitesbee/data/models/verify_otp.dart';
import 'package:bitesbee/data/services/api_services.dart';
import 'package:bitesbee/data/services/preference_manager.dart';
import 'package:bitesbee/enum/otpverifytype.dart';
import 'package:bitesbee/route/pages_routes.dart';
import 'package:bitesbee/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitController extends GetxController {
  var apiService = Get.put(ApiServices());

  late TextEditingController otpInputController = TextEditingController();
  OtpVerifyType otpVerifyType = OtpVerifyType.LOGIN;
  String _phoneNumber = "";
  var preferenceManager = Get.find<PreferenceManager>();



  // verifyOtp(VerifyOtp? verifyOtp) async {
  //   try {
  //     var response = await apiService.verifyOtp(verifyOtp!);
  //     if ((response.statusCode == 200)) {
  //       Get.toNamed(AppRoutes.OrderPage);
  //       update();
  //     } else {
  //       throw (response);
  //     }
  //   } catch (e) {
  //     print(e);
  //     update();
  //   }
  // }

/////////////////////////


  // verifyOtp() async {
  //   try {
  //     _phoneNumber = otpInputController.text;
  //     var response = await apiService.verifyOTP(
  //         _phoneNumber, otpInputController.text.toString());
  //     if ((response.statusCode == 200)) {
  //         Get.toNamed(AppRoutes.OrderPage);
  //         print("=================>${_phoneNumber + otpInputController.text}");
  //         update();
  //
  //     } else {
  //       throw (response);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }


  // verifyOtp(VerifyOtp? verifyOtp) async {
  //   try {
  //     var response = await apiService.verifyOtp(verifyOtp!);
  //     if ((response.statusCode == 200)) {
  //       Get.toNamed(AppRoutes.OrderPage);
  //       update();
  //     } else {
  //       throw (response);
  //     }
  //   } catch (e) {
  //     print(e);
  //     update();
  //   }
  // }

  verifyOtp(VerifyOtp verifyOtp) async {
    try {
      var response = await apiService.verifyOTP(verifyOtp);
       if (response.statusCode==200) {
          Get.toNamed(AppRoutes.OrderPage);
          update();
       }
       else{
         throw(response);
       }
    } catch (e) {
      print(e);
    }
  }
}
