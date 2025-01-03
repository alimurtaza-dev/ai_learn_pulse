import 'package:ai_learn_pulse/app_constants/api_constants.dart';
import 'package:ai_learn_pulse/utils/server.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../models/auth_student_model/auth_student_model.dart';

class StudentRepository {
  Future<AuthStudentModel> getAuthStudent() async {
    try {
      final response = await Server.get(ApiConstants.authStudentUrl);
      return AuthStudentModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException && e.response?.data != null) {
        return AuthStudentModel.fromJson(e.response?.data);
      }
      debugPrint("Error: $e");
      return AuthStudentModel(message: 'Error: ${e.toString()}');
    }
  }
}
