class Student{
int? _id;
String? _status;
String? _rollNumber;
DateTime? _admissionDate;
String? _registrationNumber;
dynamic _additionalNotes;
dynamic _previousSchoolName;
dynamic _yearOfLeaving;
dynamic _reasonForLeaving;
dynamic _previousClass;
dynamic _previousRollnumber;
dynamic _previousAcdemicPerformance;
int? _sessionId;
int? _userId;
int? _contactId;
int? _businessId;
int? _classId;
int? _sectionId;
DateTime? _createdAt;
DateTime? _updatedAt;
String? _createdBy;
dynamic _lastUpdatedBy;
dynamic _deletedBy;
dynamic _inactiveReasonId;
dynamic _inactiveDate;
dynamic _inactiveNote;

int? get id => _id;
String? get status => _status;
String? get rollNumber => _rollNumber;
DateTime? get admissionDate => _admissionDate;
String? get registrationNumber => _registrationNumber;
dynamic get additionalNotes => _additionalNotes;
dynamic get previousSchoolName => _previousSchoolName;
dynamic get yearOfLeaving => _yearOfLeaving;
dynamic get reasonForLeaving => _reasonForLeaving;
dynamic get previousClass => _previousClass;
dynamic get previousRollnumber => _previousRollnumber;
dynamic get previousAcdemicPerformance => _previousAcdemicPerformance;
int? get sessionId => _sessionId;
int? get userId => _userId;
int? get contactId => _contactId;
int? get businessId => _businessId;
int? get classId => _classId;
int? get sectionId => _sectionId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
String? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
dynamic get deletedBy => _deletedBy;
dynamic get inactiveReasonId => _inactiveReasonId;
dynamic get inactiveDate => _inactiveDate;
dynamic get inactiveNote => _inactiveNote;

Student({
int? id,
String? status,
String? rollNumber,
DateTime? admissionDate,
String? registrationNumber,
dynamic additionalNotes,
dynamic previousSchoolName,
dynamic yearOfLeaving,
dynamic reasonForLeaving,
dynamic previousClass,
dynamic previousRollnumber,
dynamic previousAcdemicPerformance,
int? sessionId,
int? userId,
int? contactId,
int? businessId,
int? classId,
int? sectionId,
DateTime? createdAt,
DateTime? updatedAt,
String? createdBy,
dynamic lastUpdatedBy,
dynamic deletedBy,
dynamic inactiveReasonId,
dynamic inactiveDate,
dynamic inactiveNote,
}){
_id = id;
_status = status;
_rollNumber = rollNumber;
_admissionDate = admissionDate;
_registrationNumber = registrationNumber;
_additionalNotes = additionalNotes;
_previousSchoolName = previousSchoolName;
_yearOfLeaving = yearOfLeaving;
_reasonForLeaving = reasonForLeaving;
_previousClass = previousClass;
_previousRollnumber = previousRollnumber;
_previousAcdemicPerformance = previousAcdemicPerformance;
_sessionId = sessionId;
_userId = userId;
_contactId = contactId;
_businessId = businessId;
_classId = classId;
_sectionId = sectionId;
_createdAt = createdAt;
_updatedAt = updatedAt;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_deletedBy = deletedBy;
_inactiveReasonId = inactiveReasonId;
_inactiveDate = inactiveDate;
_inactiveNote = inactiveNote;
}


Student.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_status = json["status"] as String?;
_rollNumber = json["roll_number"] as String?;
_admissionDate = json["admission_date"] != null? DateTime.tryParse(json["admission_date"].toString()):null ;
_registrationNumber = json["registration_number"] as String?;
_additionalNotes = json["additional_notes"];
_previousSchoolName = json["Previous_school_name"];
_yearOfLeaving = json["year_of_leaving"];
_reasonForLeaving = json["reason_for_leaving"];
_previousClass = json["Previous_class"];
_previousRollnumber = json["Previous_rollnumber"];
_previousAcdemicPerformance = json["previous_acdemic_performance"];
_sessionId = json["session_id"] as int?;
_userId = json["user_id"] as int?;
_contactId = json["contact_id"] as int?;
_businessId = json["business_id"] as int?;
_classId = json["class_id"] as int?;
_sectionId = json["section_id"] as int?;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_createdBy = json["created_by"] as String?;
_lastUpdatedBy = json["last_updated_by"];
_deletedBy = json["deleted_by"];
_inactiveReasonId = json["inactive_reason_id"];
_inactiveDate = json["inactive_date"];
_inactiveNote = json["inactive_note"];
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["status"] = _status;
map["roll_number"] = _rollNumber;
map["admission_date"] = _admissionDate?.toString();
map["registration_number"] = _registrationNumber;
map["additional_notes"] = _additionalNotes;
map["Previous_school_name"] = _previousSchoolName;
map["year_of_leaving"] = _yearOfLeaving;
map["reason_for_leaving"] = _reasonForLeaving;
map["Previous_class"] = _previousClass;
map["Previous_rollnumber"] = _previousRollnumber;
map["previous_acdemic_performance"] = _previousAcdemicPerformance;
map["session_id"] = _sessionId;
map["user_id"] = _userId;
map["contact_id"] = _contactId;
map["business_id"] = _businessId;
map["class_id"] = _classId;
map["section_id"] = _sectionId;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["deleted_by"] = _deletedBy;
map["inactive_reason_id"] = _inactiveReasonId;
map["inactive_date"] = _inactiveDate;
map["inactive_note"] = _inactiveNote;
return map;
}

}

