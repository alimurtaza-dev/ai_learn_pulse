import 'dart:async';
import 'package:ai_learn_pulse/screens/login_screen/login_screen.dart';
import 'package:ai_learn_pulse/screens/home_screen/home_screen.dart';
import 'package:ai_learn_pulse/utils/app_navigator.dart';
import 'package:flutter/material.dart';

import '../session_manager/session_controller.dart';

class SplashServices {
  final sessionController = SessionController();

  void checkAuthentication(BuildContext context) async {
    try {
      final isLoggedIn = sessionController.isLoggedIn();

      Timer(
        const Duration(seconds: 2),
        () {
          if (isLoggedIn) {
            AppNavigator.removeAllPreviousAndPush(context, HomeScreen());
          } else {
            AppNavigator.removeAllPreviousAndPush(context, LoginScreen());
          }
        },
      );
    } catch (error) {
      Timer(const Duration(seconds: 2),
          () => AppNavigator.removeAllPreviousAndPush(context, LoginScreen()));
    }
  }
}
