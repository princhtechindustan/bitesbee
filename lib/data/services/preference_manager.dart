
import 'dart:convert';
import 'package:bitesbee/data/models/auth.dart';
import 'package:bitesbee/data/models/login_response.dart';
import 'package:bitesbee/data/provider/get_stroage.dart';
import 'package:bitesbee/data/provider/preference_const.dart';
import 'package:get/instance_manager.dart';

class PreferenceManager {
  final SharPrefsProvider _sharePrefsProvider = Get.put(SharPrefsProvider());


  // Future<Auth?> getUserInfo() async {
  //   var result =
  //   await _sharePrefsProvider.getValue(PreferenceConstants.USER_INFO);
  //   if (result == null) return null;
  //   var auth = Auth.fromJson(json.decode(result));
  //   return auth;
  // }
  // saveUserInfo(String value) async {
  //   await _sharePrefsProvider.setValue(PreferenceConstants.USER_INFO, value);
  // }

  // Future<Authentication?> getAuthentication() async {
  //   var result =
  //   await _sharePrefsProvider.getValue(PreferenceConstants.auth);
  //   if (result == null) return null;
  //   var authValue = Authentication.fromJson(json.decode(result));
  //   return authValue;
  // }

  Future<LoginResposne?> getUserInfo() async {
    var result =
    await _sharePrefsProvider.getValue(PreferenceConstants.USER_INFO);
    if (result == null) return null;
    var loginResponse = LoginResposne.fromJson(json.decode(result));
    return loginResponse;
  }
  saveUserInfo(String value) async {
    await _sharePrefsProvider.setValue(PreferenceConstants.USER_INFO, value);
  }

  clear() async {
    await _sharePrefsProvider.removeAll();
  }
}
