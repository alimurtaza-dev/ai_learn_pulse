class Attendance{
int? _id;
String? _status;
DateTime? _date;
int? _classId;
int? _sectionId;
int? _studentId;
dynamic _staffId;
int? _businessId;
dynamic _roleId;
dynamic _note;
DateTime? _createdAt;
DateTime? _updatedAt;

int? get id => _id;
String? get status => _status;
DateTime? get date => _date;
int? get classId => _classId;
int? get sectionId => _sectionId;
int? get studentId => _studentId;
dynamic get staffId => _staffId;
int? get businessId => _businessId;
dynamic get roleId => _roleId;
dynamic get note => _note;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;

Attendance({
int? id,
String? status,
DateTime? date,
int? classId,
int? sectionId,
int? studentId,
dynamic staffId,
int? businessId,
dynamic roleId,
dynamic note,
DateTime? createdAt,
DateTime? updatedAt,
}){
_id = id;
_status = status;
_date = date;
_classId = classId;
_sectionId = sectionId;
_studentId = studentId;
_staffId = staffId;
_businessId = businessId;
_roleId = roleId;
_note = note;
_createdAt = createdAt;
_updatedAt = updatedAt;
}


Attendance.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_status = json["status"] as String?;
_date = json["date"] != null? DateTime.tryParse(json["date"].toString()):null ;
_classId = json["class_id"] as int?;
_sectionId = json["section_id"] as int?;
_studentId = json["student_id"] as int?;
_staffId = json["staff_id"];
_businessId = json["business_id"] as int?;
_roleId = json["role_id"];
_note = json["note"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["status"] = _status;
map["date"] = _date?.toString();
map["class_id"] = _classId;
map["section_id"] = _sectionId;
map["student_id"] = _studentId;
map["staff_id"] = _staffId;
map["business_id"] = _businessId;
map["role_id"] = _roleId;
map["note"] = _note;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
return map;
}

}

