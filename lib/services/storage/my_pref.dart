
import 'package:get_storage/get_storage.dart';

import '../../app_constants/app_prefrence_constants.dart';
import '../../models/user_model/user_model.dart';

class MyPref {
  static final _storage = GetStorage();

  MyPref._();

  static saveUserToken(String token) {
    _storage.write(AppPrefrenceConstants.currentUserToken, token);
  }

  static void saveUser(List<UserData> users) async {
    _storage.remove(AppPrefrenceConstants.currentUser); 
    final userDataList = users.map((user) => user.toJson()).toList();
    await _storage.write(AppPrefrenceConstants.currentUser, userDataList);
  }

  static List<UserData> getSavedUser() {
    final userList =
        _storage.read<List<dynamic>>(AppPrefrenceConstants.currentUser) ?? [];
    return userList.map((json) => UserData.fromJson(json)).toList();
  }


  static String? userToken() =>
      _storage.read(AppPrefrenceConstants.currentUserToken);

  static void logout() {
    _storage.remove(AppPrefrenceConstants.currentUserToken);
    _storage.remove(AppPrefrenceConstants.currentUser);
  }

  static void erasePref() {
    _storage.erase();
  }
}
