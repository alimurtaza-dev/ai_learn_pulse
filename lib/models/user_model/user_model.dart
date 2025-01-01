import '../address/address_model.dart';
import '../business/business_model.dart';
import '../contacts_model/contacts_model.dart';
import '../roles/roles_model.dart';
import '../student/student_model.dart';

class UserData{
int? _id;
String? _email;
String? _mobileNo;
dynamic _emailVerifiedAt;
String? _userType;
int? _roleId;
int? _businessId;
int? _createdBy;
dynamic _lastUpdatedBy;
dynamic _deletedAt;
DateTime? _createdAt;
DateTime? _updatedAt;
Contacts? _contacts;
List<Addresses>? _addresses;
Role? _role;
Student? _student;
dynamic _staff;
Business? _business;

int? get id => _id;
String? get email => _email;
String? get mobileNo => _mobileNo;
dynamic get emailVerifiedAt => _emailVerifiedAt;
String? get userType => _userType;
int? get roleId => _roleId;
int? get businessId => _businessId;
int? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
dynamic get deletedAt => _deletedAt;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
Contacts? get contacts => _contacts;
List<Addresses>? get addresses => _addresses;
Role? get role => _role;
Student? get student => _student;
dynamic get staff => _staff;
Business? get business => _business;

UserData({
int? id,
String? email,
String? mobileNo,
dynamic emailVerifiedAt,
String? userType,
int? roleId,
int? businessId,
int? createdBy,
dynamic lastUpdatedBy,
dynamic deletedAt,
DateTime? createdAt,
DateTime? updatedAt,
Contacts? contacts,
List<Addresses>? addresses,
Role? role,
Student? student,
dynamic staff,
Business? business,
}){
_id = id;
_email = email;
_mobileNo = mobileNo;
_emailVerifiedAt = emailVerifiedAt;
_userType = userType;
_roleId = roleId;
_businessId = businessId;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_deletedAt = deletedAt;
_createdAt = createdAt;
_updatedAt = updatedAt;
_contacts = contacts;
_addresses = addresses;
_role = role;
_student = student;
_staff = staff;
_business = business;
}


UserData.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_email = json["email"] as String?;
_mobileNo = json["mobile_no"] as String?;
_emailVerifiedAt = json["email_verified_at"];
_userType = json["user_type"] as String?;
_roleId = json["role_id"] as int?;
_businessId = json["business_id"] as int?;
_createdBy = json["created_by"] as int?;
_lastUpdatedBy = json["last_updated_by"];
_deletedAt = json["deleted_at"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_contacts = json["contacts"] != null? Contacts.fromJson(json["contacts"]):null;
_addresses = (json["addresses"] as List?)?.map((dynamic e) => Addresses.fromJson(e)).toList();
_role = json["role"] != null? Role.fromJson(json["role"]):null;
_student = json["student"] != null? Student.fromJson(json["student"]):null;
_staff = json["staff"];
_business = json["business"] != null? Business.fromJson(json["business"]):null;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["email"] = _email;
map["mobile_no"] = _mobileNo;
map["email_verified_at"] = _emailVerifiedAt;
map["user_type"] = _userType;
map["role_id"] = _roleId;
map["business_id"] = _businessId;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["deleted_at"] = _deletedAt;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["contacts"] = _contacts?.toJson();
map["addresses"] = _addresses?.map((e) => e.toJson()).toList();
map["role"] = _role?.toJson();
map["student"] = _student?.toJson();
map["staff"] = _staff;
map["business"] = _business?.toJson();
return map;
}

}

