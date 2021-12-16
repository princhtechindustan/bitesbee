import 'package:bitesbee/data/models/verify_otp.dart';
import 'package:bitesbee/data/provider/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:dio/dio.dart' as dio;

class ApiServices {
  var apiProvider = Get.put(ApiProvider());


  Future<dio.Dio> _getApiData() async {
    return await apiProvider.getClient();
  }
  Future<Response> login(String phone, String password) async {
    return await (await _getApiData()).post("v1/auth/login");
  }

  Future<Response> sendOTP(String phone) async {
    var data = {"phone": phone};
    return await (await _getApiData()).post("auth/login/sendOtp", data: data);
  }

  Future<Response> verifyOTP(VerifyOtp verifyOtp) async {
    return await (await _getApiData())
        .post("auth/login/verifyOtp", data: verifyOtp.toJson());
  }


  Future<dio.Response> orderPage()async{
    return await (await _getApiData()).post("");
  }
}