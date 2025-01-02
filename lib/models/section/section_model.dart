class SectionId{
int? _id;
String? _name;
int? _businessId;
DateTime? _createdAt;
DateTime? _updatedAt;
String? _createdBy;
dynamic _lastUpdatedBy;
dynamic _deletedBy;

int? get id => _id;
String? get name => _name;
int? get businessId => _businessId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
String? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
dynamic get deletedBy => _deletedBy;

SectionId({
int? id,
String? name,
int? businessId,
DateTime? createdAt,
DateTime? updatedAt,
String? createdBy,
dynamic lastUpdatedBy,
dynamic deletedBy,
}){
_id = id;
_name = name;
_businessId = businessId;
_createdAt = createdAt;
_updatedAt = updatedAt;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_deletedBy = deletedBy;
}


SectionId.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_name = json["name"] as String?;
_businessId = json["business_id"] as int?;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_createdBy = json["created_by"] as String?;
_lastUpdatedBy = json["last_updated_by"];
_deletedBy = json["deleted_by"];
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["name"] = _name;
map["business_id"] = _businessId;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["deleted_by"] = _deletedBy;
return map;
}

}

