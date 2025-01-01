import '../user_model/user_model.dart';

class LoginUserModel{
bool? _success;
String? _message;
List<UserData>? _data;

bool? get success => _success;
String? get message => _message;
List<UserData>? get data => _data;

LoginUserModel({
bool? success,
String? message,
List<UserData>? data,
}){
_success = success;
_message = message;
_data = data;
}


LoginUserModel.fromJson(dynamic json){
if(json is Map){
_success = json["success"] as bool?;
_message = json["message"] as String?;
_data = (json["data"] as List?)?.map((dynamic e) => UserData.fromJson(e)).toList();
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["success"] = _success;
map["message"] = _message;
map["data"] = _data?.map((e) => e.toJson()).toList();
return map;
}

}









