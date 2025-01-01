import 'package:ai_learn_pulse/app_constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../models/login_model/login_response_model.dart';
import '../../utils/server.dart';

class AuthRepository {
  Future<LoginResponseModel> login(String phone, String password) async {
    try {
      final userdata = FormData();
      userdata.fields.addAll([
        MapEntry('mobile_no', phone.replaceFirst("+", "")),
        MapEntry('password', password),
      ]);

      final Response response = await Server.post(
        ApiConstants.loginUrl,
        data: userdata,
      );
      return LoginResponseModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException && e.response?.data != null) {
        return LoginResponseModel.fromJson(e.response?.data);
      }
      debugPrint('Error: $e');
      return LoginResponseModel(
          message: "An error occurred. Please try again later.");
    }
  }
}
