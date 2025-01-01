import 'package:get_storage/get_storage.dart';

import '../../app_constants/app_prefrence_constants.dart';

class MyPref {
  static final _storage = GetStorage();

  MyPref._();

  static saveUserToken(String token) {
    _storage.write(AppPrefrenceConstants.currentUserToken, token);
  }

  // static void saveUser(UserModel? user) {
  //   if (user != null) {
  //     _storage.write(
  //       AppPrefrenceConstants.currentUser,
  //       jsonEncode(user.toJson()),
  //     );
  //   }
  // }

  // static UserModel? getSavedUser() {
  //   String? userJson = _storage.read(AppPrefrenceConstants.currentUser);
  //   if (userJson != null && userJson.isNotEmpty) {
  //     return UserModel.fromJson(jsonDecode(userJson));
  //   }
  //   return null;
  // }


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
