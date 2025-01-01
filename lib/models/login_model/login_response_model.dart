class LoginResponseModel{
bool? _success;
String? _message;
List<LoginResponseData>? _data;

bool? get success => _success;
String? get message => _message;
List<LoginResponseData>? get data => _data;

LoginResponseModel({
bool? success,
String? message,
List<LoginResponseData>? data,
}){
_success = success;
_message = message;
_data = data;
}


LoginResponseModel.fromJson(dynamic json){
if(json is Map){
_success = json["success"] as bool?;
_message = json["message"] as String?;
_data = (json["data"] as List?)?.map((dynamic e) => LoginResponseData.fromJson(e)).toList();
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


class LoginResponseData{
String? _token;
int? _customerId;
int? _businessId;
String? _userType;

String? get token => _token;
int? get customerId => _customerId;
int? get businessId => _businessId;
String? get userType => _userType;

LoginResponseData({
String? token,
int? customerId,
int? businessId,
String? userType,
}){
_token = token;
_customerId = customerId;
_businessId = businessId;
_userType = userType;
}


LoginResponseData.fromJson(dynamic json){
if(json is Map){
_token = json["token"] as String?;
_customerId = json["customer_id"] as int?;
_businessId = json["business_id"] as int?;
_userType = json["user_type"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["token"] = _token;
map["customer_id"] = _customerId;
map["business_id"] = _businessId;
map["user_type"] = _userType;
return map;
}

}
