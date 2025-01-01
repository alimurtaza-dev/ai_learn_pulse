class RolePermissions{
int? _roleId;
int? _permissionId;
String? _canView;
String? _canUpdate;
String? _canCreate;
String? _canDelete;

int? get roleId => _roleId;
int? get permissionId => _permissionId;
String? get canView => _canView;
String? get canUpdate => _canUpdate;
String? get canCreate => _canCreate;
String? get canDelete => _canDelete;

RolePermissions({
int? roleId,
int? permissionId,
String? canView,
String? canUpdate,
String? canCreate,
String? canDelete,
}){
_roleId = roleId;
_permissionId = permissionId;
_canView = canView;
_canUpdate = canUpdate;
_canCreate = canCreate;
_canDelete = canDelete;
}


RolePermissions.fromJson(dynamic json){
if(json is Map){
_roleId = json["role_id"] as int?;
_permissionId = json["permission_id"] as int?;
_canView = json["can_view"] as String?;
_canUpdate = json["can_update"] as String?;
_canCreate = json["can_create"] as String?;
_canDelete = json["can_delete"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["role_id"] = _roleId;
map["permission_id"] = _permissionId;
map["can_view"] = _canView;
map["can_update"] = _canUpdate;
map["can_create"] = _canCreate;
map["can_delete"] = _canDelete;
return map;
}

}

