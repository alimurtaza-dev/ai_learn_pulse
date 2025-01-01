import '../permissions/permissions_model.dart';

class Role{
int? _id;
String? _name;
int? _businessId;
dynamic _createdBy;
dynamic _lastUpdatedBy;
DateTime? _createdAt;
DateTime? _updatedAt;
dynamic _deletedAt;
List<Permissions>? _permissions;

int? get id => _id;
String? get name => _name;
int? get businessId => _businessId;
dynamic get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
dynamic get deletedAt => _deletedAt;
List<Permissions>? get permissions => _permissions;

Role({
int? id,
String? name,
int? businessId,
dynamic createdBy,
dynamic lastUpdatedBy,
DateTime? createdAt,
DateTime? updatedAt,
dynamic deletedAt,
List<Permissions>? permissions,
}){
_id = id;
_name = name;
_businessId = businessId;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_createdAt = createdAt;
_updatedAt = updatedAt;
_deletedAt = deletedAt;
_permissions = permissions;
}


Role.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_name = json["name"] as String?;
_businessId = json["business_id"] as int?;
_createdBy = json["created_by"];
_lastUpdatedBy = json["last_updated_by"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_deletedAt = json["deleted_at"];
_permissions = (json["permissions"] as List?)?.map((dynamic e) => Permissions.fromJson(e)).toList();
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["name"] = _name;
map["business_id"] = _businessId;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["deleted_at"] = _deletedAt;
map["permissions"] = _permissions?.map((e) => e.toJson()).toList();
return map;
}

}

