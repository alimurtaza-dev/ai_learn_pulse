class CourseId{
int? _id;
String? _title;
String? _description;
int? _businessId;
String? _createdBy;
dynamic _lastUpdatedBy;
DateTime? _createdAt;
DateTime? _updatedAt;

int? get id => _id;
String? get title => _title;
String? get description => _description;
int? get businessId => _businessId;
String? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;

CourseId({
int? id,
String? title,
String? description,
int? businessId,
String? createdBy,
dynamic lastUpdatedBy,
DateTime? createdAt,
DateTime? updatedAt,
}){
_id = id;
_title = title;
_description = description;
_businessId = businessId;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_createdAt = createdAt;
_updatedAt = updatedAt;
}


CourseId.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_title = json["title"] as String?;
_description = json["description"] as String?;
_businessId = json["business_id"] as int?;
_createdBy = json["created_by"] as String?;
_lastUpdatedBy = json["last_updated_by"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["title"] = _title;
map["description"] = _description;
map["business_id"] = _businessId;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
return map;
}

}
