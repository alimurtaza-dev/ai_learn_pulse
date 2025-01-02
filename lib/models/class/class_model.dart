class ClassId{
int? _id;
String? _name;
String? _sectionId;
int? _businessId;
DateTime? _createdAt;
DateTime? _updatedAt;
String? _createdBy;
dynamic _updatedBy;

int? get id => _id;
String? get name => _name;
String? get sectionId => _sectionId;
int? get businessId => _businessId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
String? get createdBy => _createdBy;
dynamic get updatedBy => _updatedBy;

ClassId({
int? id,
String? name,
String? sectionId,
int? businessId,
DateTime? createdAt,
DateTime? updatedAt,
String? createdBy,
dynamic updatedBy,
}){
_id = id;
_name = name;
_sectionId = sectionId;
_businessId = businessId;
_createdAt = createdAt;
_updatedAt = updatedAt;
_createdBy = createdBy;
_updatedBy = updatedBy;
}


ClassId.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_name = json["name"] as String?;
_sectionId = json["section_id"] as String?;
_businessId = json["business_id"] as int?;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_createdBy = json["created_by"] as String?;
_updatedBy = json["updated_by"];
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["name"] = _name;
map["section_id"] = _sectionId;
map["business_id"] = _businessId;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["created_by"] = _createdBy;
map["updated_by"] = _updatedBy;
return map;
}

}

