

import 'package:bitesbee/data/services/preference_manager.dart';
import 'package:bitesbee/enum/build_type.dart';
import 'package:dio/dio.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';

class ApiProvider {
  Dio? _dio;
  var prefManager = Get.put(PreferenceManager());


  Future<Dio> getClient() async {
    if (_dio == null) {
      _dio = Dio();
      BuildType buildType = BuildType.stage;
      var BaseUrl = "";
      switch (buildType) {
        case BuildType.dev:
          BaseUrl = "http://api.tidda.s2.ths.agency";
          break;
        case BuildType.stage:
          BaseUrl = "http://bitesbee-order-backend.s2.ths.agency/api/v1/";
          break;
        case BuildType.pro:
          BaseUrl = "";
          break;
      }

      BaseOptions options =  BaseOptions(
          baseUrl: BaseUrl,
          receiveDataWhenStatusError: true,
          connectTimeout: 2 * 60 * 1000, // 60 seconds
          receiveTimeout: 2 * 60 * 1000 // 60 seconds
      );

      _dio!.options = options;

      _dio!.interceptors.add(LogInterceptor(
          responseBody: true,
          requestHeader: true,
          request: true,
          requestBody: true));

      _dio!.interceptors
          .add(InterceptorsWrapper(onRequest: (options, handler) async {
        // Do something before request is sent
        var user = await prefManager.getUserInfo();
        if (user != null && user.accessToken != null) {
          options.headers = {"Authorization": "Bearer " + user.accessToken!};

        }
        /*if (global.accessToken != null && global.accessToken.isNotEmpty) {
          options.headers = {"Authorization": "Bearer " + global.accessToken};
        }*/
        return handler.next(options); //continue
      }, onResponse: (response, handler) {
        return handler.next(response);
      }, onError: (DioError e, handler) {
        // Do something with response error
        return handler.next(e); //continue
      }));
    } else {
      _dio!.interceptors
          .add(InterceptorsWrapper(onRequest: (options, handler) async {
        // Do something before request is sent
        var user = await prefManager.getUserInfo();
        if (user != null && user.accessToken != null) {
          options.headers = {"Authorization": "Bearer " + user.accessToken!};
        }
        /*if (global.accessToken != null && global.accessToken.isNotEmpty) {
          options.headers = {"Authorization": "Bearer " + global.accessToken};
        }*/
        return handler.next(options); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: return `dio.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: return `dio.reject(dioError)`
      }, onResponse: (response, handler) {
        // Do something with response data
        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: return `dio.reject(dioError)`
      }, onError: (DioError e, handler) {
        // Do something with response error
        return handler.next(e); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: return `dio.resolve(response)`.
      }));
    }
    return _dio!;
  }
}