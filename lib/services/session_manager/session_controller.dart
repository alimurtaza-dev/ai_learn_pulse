import 'package:flutter/material.dart';

import '../../models/user_model/user_model.dart';
import '../storage/my_pref.dart';

class SessionController {
  static final SessionController _instance = SessionController._internal();

  static bool? isLogin;

  static List<UserData> user = [];

  SessionController._internal() {
    isLogin = MyPref.userToken()?.isNotEmpty ?? false;
  }

  factory SessionController() {
    return _instance;
  }

  Future<void> saveUserToken(String token) async {
    await MyPref.saveUserToken(token);
    isLogin = true;
    debugPrint('Token saved. isLogin: $isLogin'); 
  }

  Future<void> saveUser(List<UserData> users) async {
    MyPref.saveUser(users);
    isLogin = true;
    debugPrint('User saved. isLogin: $isLogin'); 
  }

  bool isLoggedIn() {
    debugPrint('isLoggedIn called. isLogin: $isLogin'); 
    return isLogin ?? false;
  }

  Future<void> logout() async {
    MyPref.logout();
    isLogin = false;
    user = [];
  }

  Future<void> erasePref() async {
    MyPref.erasePref();
    isLogin = false;
    user = [];
  }

  Future<void> getUserFromPreference() async {
    try {
      final token = MyPref.userToken();
      final users = MyPref.getSavedUser();

      debugPrint('Token: $token'); 
      debugPrint('Users: $users'); 

      if (token != null && token.isNotEmpty && users.isNotEmpty) {
        user = users;
        isLogin = true;
      } else {
        isLogin = false;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
