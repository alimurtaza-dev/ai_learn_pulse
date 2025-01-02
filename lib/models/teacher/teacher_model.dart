import '../user_model/user_model.dart';

class TeacherId{
int? _id;
int? _businessId;
int? _contactId;
int? _userId;
String? _staffIdNo;
String? _status;
dynamic _contactType;
dynamic _qualification;
int? _workExperience;
int? _basicSalary;
DateTime? _joiningDate;
dynamic _bankName;
dynamic _accountTitle;
dynamic _accountNo;
DateTime? _createdAt;
DateTime? _updatedAt;
dynamic _inactiveReasonId;
dynamic _inactiveDate;
dynamic _inactiveNote;
UserData? _user;

int? get id => _id;
int? get businessId => _businessId;
int? get contactId => _contactId;
int? get userId => _userId;
String? get staffIdNo => _staffIdNo;
String? get status => _status;
dynamic get contactType => _contactType;
dynamic get qualification => _qualification;
int? get workExperience => _workExperience;
int? get basicSalary => _basicSalary;
DateTime? get joiningDate => _joiningDate;
dynamic get bankName => _bankName;
dynamic get accountTitle => _accountTitle;
dynamic get accountNo => _accountNo;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
dynamic get inactiveReasonId => _inactiveReasonId;
dynamic get inactiveDate => _inactiveDate;
dynamic get inactiveNote => _inactiveNote;
UserData? get user => _user;

TeacherId({
int? id,
int? businessId,
int? contactId,
int? userId,
String? staffIdNo,
String? status,
dynamic contactType,
dynamic qualification,
int? workExperience,
int? basicSalary,
DateTime? joiningDate,
dynamic bankName,
dynamic accountTitle,
dynamic accountNo,
DateTime? createdAt,
DateTime? updatedAt,
dynamic inactiveReasonId,
dynamic inactiveDate,
dynamic inactiveNote,
UserData? user,
}){
_id = id;
_businessId = businessId;
_contactId = contactId;
_userId = userId;
_staffIdNo = staffIdNo;
_status = status;
_contactType = contactType;
_qualification = qualification;
_workExperience = workExperience;
_basicSalary = basicSalary;
_joiningDate = joiningDate;
_bankName = bankName;
_accountTitle = accountTitle;
_accountNo = accountNo;
_createdAt = createdAt;
_updatedAt = updatedAt;
_inactiveReasonId = inactiveReasonId;
_inactiveDate = inactiveDate;
_inactiveNote = inactiveNote;
_user = user;
}


TeacherId.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_businessId = json["business_id"] as int?;
_contactId = json["contact_id"] as int?;
_userId = json["user_id"] as int?;
_staffIdNo = json["staff_id_no"] as String?;
_status = json["status"] as String?;
_contactType = json["contact_type"];
_qualification = json["qualification"];
_workExperience = json["work_experience"] as int?;
_basicSalary = json["basic_salary"] as int?;
_joiningDate = json["joining_date"] != null? DateTime.tryParse(json["joining_date"].toString()):null ;
_bankName = json["bank_name"];
_accountTitle = json["account_title"];
_accountNo = json["account_no"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_inactiveReasonId = json["inactive_reason_id"];
_inactiveDate = json["inactive_date"];
_inactiveNote = json["inactive_note"];
_user = json["user"] != null? UserData.fromJson(json["user"]):null;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["business_id"] = _businessId;
map["contact_id"] = _contactId;
map["user_id"] = _userId;
map["staff_id_no"] = _staffIdNo;
map["status"] = _status;
map["contact_type"] = _contactType;
map["qualification"] = _qualification;
map["work_experience"] = _workExperience;
map["basic_salary"] = _basicSalary;
map["joining_date"] = _joiningDate?.toString();
map["bank_name"] = _bankName;
map["account_title"] = _accountTitle;
map["account_no"] = _accountNo;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["inactive_reason_id"] = _inactiveReasonId;
map["inactive_date"] = _inactiveDate;
map["inactive_note"] = _inactiveNote;
map["user"] = _user?.toJson();
return map;
}

}

