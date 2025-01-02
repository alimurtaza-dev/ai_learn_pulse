import '../image_urls/image_urls_model.dart';

class Guardian{
int? _id;
String? _relationshipToStudent;
dynamic _occupation;
int? _studentId;
int? _businessId;
String? _fatherName;
String? _motherName;
String? _fatherContact;
String? _motherContact;
dynamic _fatherId;
dynamic _motherId;
dynamic _fatherOccupation;
dynamic _motherOccupation;
dynamic _income;
dynamic _guardianId;
String? _guardianContactNo;
String? _guardianName;
dynamic _fatherIdPic;
dynamic _motherIdPic;
dynamic _guardianIdPic;
DateTime? _createdAt;
DateTime? _updatedAt;
String? _createdBy;
dynamic _lastUpdatedBy;
ImageUrls? _imageUrls;

int? get id => _id;
String? get relationshipToStudent => _relationshipToStudent;
dynamic get occupation => _occupation;
int? get studentId => _studentId;
int? get businessId => _businessId;
String? get fatherName => _fatherName;
String? get motherName => _motherName;
String? get fatherContact => _fatherContact;
String? get motherContact => _motherContact;
dynamic get fatherId => _fatherId;
dynamic get motherId => _motherId;
dynamic get fatherOccupation => _fatherOccupation;
dynamic get motherOccupation => _motherOccupation;
dynamic get income => _income;
dynamic get guardianId => _guardianId;
String? get guardianContactNo => _guardianContactNo;
String? get guardianName => _guardianName;
dynamic get fatherIdPic => _fatherIdPic;
dynamic get motherIdPic => _motherIdPic;
dynamic get guardianIdPic => _guardianIdPic;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
String? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
ImageUrls? get imageUrls => _imageUrls;

Guardian({
int? id,
String? relationshipToStudent,
dynamic occupation,
int? studentId,
int? businessId,
String? fatherName,
String? motherName,
String? fatherContact,
String? motherContact,
dynamic fatherId,
dynamic motherId,
dynamic fatherOccupation,
dynamic motherOccupation,
dynamic income,
dynamic guardianId,
String? guardianContactNo,
String? guardianName,
dynamic fatherIdPic,
dynamic motherIdPic,
dynamic guardianIdPic,
DateTime? createdAt,
DateTime? updatedAt,
String? createdBy,
dynamic lastUpdatedBy,
ImageUrls? imageUrls,
}){
_id = id;
_relationshipToStudent = relationshipToStudent;
_occupation = occupation;
_studentId = studentId;
_businessId = businessId;
_fatherName = fatherName;
_motherName = motherName;
_fatherContact = fatherContact;
_motherContact = motherContact;
_fatherId = fatherId;
_motherId = motherId;
_fatherOccupation = fatherOccupation;
_motherOccupation = motherOccupation;
_income = income;
_guardianId = guardianId;
_guardianContactNo = guardianContactNo;
_guardianName = guardianName;
_fatherIdPic = fatherIdPic;
_motherIdPic = motherIdPic;
_guardianIdPic = guardianIdPic;
_createdAt = createdAt;
_updatedAt = updatedAt;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_imageUrls = imageUrls;
}


Guardian.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_relationshipToStudent = json["relationship_to_student"] as String?;
_occupation = json["occupation"];
_studentId = json["student_id"] as int?;
_businessId = json["business_id"] as int?;
_fatherName = json["father_name"] as String?;
_motherName = json["mother_name"] as String?;
_fatherContact = json["father_contact"] as String?;
_motherContact = json["mother_contact"] as String?;
_fatherId = json["father_id"];
_motherId = json["mother_id"];
_fatherOccupation = json["father_occupation"];
_motherOccupation = json["mother_occupation"];
_income = json["income"];
_guardianId = json["guardian_id"];
_guardianContactNo = json["guardian_contact_no"] as String?;
_guardianName = json["guardian_name"] as String?;
_fatherIdPic = json["father_id_pic"];
_motherIdPic = json["mother_id_pic"];
_guardianIdPic = json["guardian_id_pic"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_createdBy = json["created_by"] as String?;
_lastUpdatedBy = json["last_updated_by"];
_imageUrls = json["image_urls"] != null? ImageUrls.fromJson(json["image_urls"]):null;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["relationship_to_student"] = _relationshipToStudent;
map["occupation"] = _occupation;
map["student_id"] = _studentId;
map["business_id"] = _businessId;
map["father_name"] = _fatherName;
map["mother_name"] = _motherName;
map["father_contact"] = _fatherContact;
map["mother_contact"] = _motherContact;
map["father_id"] = _fatherId;
map["mother_id"] = _motherId;
map["father_occupation"] = _fatherOccupation;
map["mother_occupation"] = _motherOccupation;
map["income"] = _income;
map["guardian_id"] = _guardianId;
map["guardian_contact_no"] = _guardianContactNo;
map["guardian_name"] = _guardianName;
map["father_id_pic"] = _fatherIdPic;
map["mother_id_pic"] = _motherIdPic;
map["guardian_id_pic"] = _guardianIdPic;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["image_urls"] = _imageUrls?.toJson();
return map;
}

}

