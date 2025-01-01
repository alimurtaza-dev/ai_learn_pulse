import '../../../models/user_model/user_model.dart';
import '../my_pref.dart';

class SessionController {
  static final SessionController _instance = SessionController._internal();

  factory SessionController() {
    return _instance;
  }

  SessionController._internal();

  Future<void> saveUserToken(String token) async {
    await MyPref.saveUserToken(token);
  }

  String? getUserToken() {
    return MyPref.userToken();
  }

  void saveUser(List<UserData> users) {
    MyPref.saveUser(users);
  }

  List<UserData> getSavedUser() {
    return MyPref.getSavedUser();
  }

  bool isLoggedIn() {
    return MyPref.userToken() != null;
  }

  void logout() {
    MyPref.logout();
  }

  void erasePref() {
    MyPref.erasePref();
  }
}
