import '../role_permissions/role_permissions.dart';

class Permissions{
int? _id;
String? _name;
dynamic _createdBy;
dynamic _lastUpdatedBy;
dynamic _createdAt;
dynamic _updatedAt;
RolePermissions? _rolePermissions;

int? get id => _id;
String? get name => _name;
dynamic get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
dynamic get createdAt => _createdAt;
dynamic get updatedAt => _updatedAt;
RolePermissions? get rolePermissions => _rolePermissions;

Permissions({
int? id,
String? name,
dynamic createdBy,
dynamic lastUpdatedBy,
dynamic createdAt,
dynamic updatedAt,
RolePermissions? rolePermissions,
}){
_id = id;
_name = name;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_createdAt = createdAt;
_updatedAt = updatedAt;
_rolePermissions = rolePermissions;
}


Permissions.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_name = json["name"] as String?;
_createdBy = json["created_by"];
_lastUpdatedBy = json["last_updated_by"];
_createdAt = json["created_at"];
_updatedAt = json["updated_at"];
_rolePermissions = json["role_permissions"] != null? RolePermissions.fromJson(json["role_permissions"]):null;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["name"] = _name;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["created_at"] = _createdAt;
map["updated_at"] = _updatedAt;
map["role_permissions"] = _rolePermissions?.toJson();
return map;
}

}

