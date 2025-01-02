import '../attendance/attendance_model.dart';
import '../class/class_model.dart';
import '../fee_structure/fee_structure.dart';
import '../guardian/guardian_model.dart';
import '../section/section_model.dart';
import '../time_table/time_table.dart';
import '../user_model/user_model.dart';

class AuthStudentModel{
bool? _success;
String? _message;
Data? _data;

bool? get success => _success;
String? get message => _message;
Data? get data => _data;

AuthStudentModel({
bool? success,
String? message,
Data? data,
}){
_success = success;
_message = message;
_data = data;
}


AuthStudentModel.fromJson(dynamic json){
if(json is Map){
_success = json["success"] as bool?;
_message = json["message"] as String?;
_data = json["data"] != null? Data.fromJson(json["data"]):null;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["success"] = _success;
map["message"] = _message;
map["data"] = _data?.toJson();
return map;
}

}


class Data{
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
ClassId? _classId;
SectionId? _sectionId;
DateTime? _createdAt;
DateTime? _updatedAt;
String? _createdBy;
dynamic _lastUpdatedBy;
dynamic _deletedBy;
dynamic _inactiveReasonId;
dynamic _inactiveDate;
dynamic _inactiveNote;
dynamic _googleMeet;
dynamic _gmeetStatus;
UserData? _user;
List<dynamic>? _siblings;
List<FeeStructure>? _feeStructure;
Guardian? _guardian;
List<Attendance>? _attendance;
List<GenerateFee>? _generateFee;
List<MasterFee>? _masterFee;
List<dynamic>? _examMarks;
List<dynamic>? _feeParticular;
Medical? _medical;
List<dynamic>? _attachment;
List<dynamic>? _document;
List<dynamic>? _datesheet;
List<Timetable>? _timetable;
List<dynamic>? _discounts;
int? _totalMonthlyFee;
int? _pendingFee;
int? _paidFee;

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
ClassId? get classId => _classId;
SectionId? get sectionId => _sectionId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
String? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
dynamic get deletedBy => _deletedBy;
dynamic get inactiveReasonId => _inactiveReasonId;
dynamic get inactiveDate => _inactiveDate;
dynamic get inactiveNote => _inactiveNote;
dynamic get googleMeet => _googleMeet;
dynamic get gmeetStatus => _gmeetStatus;
UserData? get user => _user;
List<dynamic>? get siblings => _siblings;
List<FeeStructure>? get feeStructure => _feeStructure;
Guardian? get guardian => _guardian;
List<Attendance>? get attendance => _attendance;
List<GenerateFee>? get generateFee => _generateFee;
List<MasterFee>? get masterFee => _masterFee;
List<dynamic>? get examMarks => _examMarks;
List<dynamic>? get feeParticular => _feeParticular;
Medical? get medical => _medical;
List<dynamic>? get attachment => _attachment;
List<dynamic>? get document => _document;
List<dynamic>? get datesheet => _datesheet;
List<Timetable>? get timetable => _timetable;
List<dynamic>? get discounts => _discounts;
int? get totalMonthlyFee => _totalMonthlyFee;
int? get pendingFee => _pendingFee;
int? get paidFee => _paidFee;

Data({
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
ClassId? classId,
SectionId? sectionId,
DateTime? createdAt,
DateTime? updatedAt,
String? createdBy,
dynamic lastUpdatedBy,
dynamic deletedBy,
dynamic inactiveReasonId,
dynamic inactiveDate,
dynamic inactiveNote,
dynamic googleMeet,
dynamic gmeetStatus,
UserData? user,
List<dynamic>? siblings,
List<FeeStructure>? feeStructure,
Guardian? guardian,
List<Attendance>? attendance,
List<GenerateFee>? generateFee,
List<MasterFee>? masterFee,
List<dynamic>? examMarks,
List<dynamic>? feeParticular,
Medical? medical,
List<dynamic>? attachment,
List<dynamic>? document,
List<dynamic>? datesheet,
List<Timetable>? timetable,
List<dynamic>? discounts,
int? totalMonthlyFee,
int? pendingFee,
int? paidFee,
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
_googleMeet = googleMeet;
_gmeetStatus = gmeetStatus;
_user = user;
_siblings = siblings;
_feeStructure = feeStructure;
_guardian = guardian;
_attendance = attendance;
_generateFee = generateFee;
_masterFee = masterFee;
_examMarks = examMarks;
_feeParticular = feeParticular;
_medical = medical;
_attachment = attachment;
_document = document;
_datesheet = datesheet;
_timetable = timetable;
_discounts = discounts;
_totalMonthlyFee = totalMonthlyFee;
_pendingFee = pendingFee;
_paidFee = paidFee;
}


Data.fromJson(dynamic json){
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
_classId = json["class_id"] != null? ClassId.fromJson(json["class_id"]):null;
_sectionId = json["section_id"] != null? SectionId.fromJson(json["section_id"]):null;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_createdBy = json["created_by"] as String?;
_lastUpdatedBy = json["last_updated_by"];
_deletedBy = json["deleted_by"];
_inactiveReasonId = json["inactive_reason_id"];
_inactiveDate = json["inactive_date"];
_inactiveNote = json["inactive_note"];
_googleMeet = json["googleMeet"];
_gmeetStatus = json["gmeet_status"];
_user = json["user"] != null? UserData.fromJson(json["user"]):null;
_siblings = (json["siblings"] as List?)?.map((e) => e).toList();
_feeStructure = (json["fee_structure"] as List?)?.map((dynamic e) => FeeStructure.fromJson(e)).toList();
_guardian = json["guardian"] != null? Guardian.fromJson(json["guardian"]):null;
_attendance = (json["attendance"] as List?)?.map((dynamic e) => Attendance.fromJson(e)).toList();
_generateFee = (json["generate_fee"] as List?)?.map((dynamic e) => GenerateFee.fromJson(e)).toList();
_masterFee = (json["master_fee"] as List?)?.map((dynamic e) => MasterFee.fromJson(e)).toList();
_examMarks = (json["exam_marks"] as List?)?.map((e) => e).toList();
_feeParticular = (json["fee_particular"] as List?)?.map((e) => e).toList();
_medical = json["medical"] != null? Medical.fromJson(json["medical"]):null;
_attachment = (json["attachment"] as List?)?.map((e) => e).toList();
_document = (json["document"] as List?)?.map((e) => e).toList();
_datesheet = (json["datesheet"] as List?)?.map((e) => e).toList();
_timetable = (json["timetable"] as List?)?.map((dynamic e) => Timetable.fromJson(e)).toList();
_discounts = (json["discounts"] as List?)?.map((e) => e).toList();
_totalMonthlyFee = json["total_monthly_fee"] as int?;
_pendingFee = json["pending_fee"] as int?;
_paidFee = json["paid_fee"] as int?;
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
map["class_id"] = _classId?.toJson();
map["section_id"] = _sectionId?.toJson();
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["deleted_by"] = _deletedBy;
map["inactive_reason_id"] = _inactiveReasonId;
map["inactive_date"] = _inactiveDate;
map["inactive_note"] = _inactiveNote;
map["googleMeet"] = _googleMeet;
map["gmeet_status"] = _gmeetStatus;
map["user"] = _user?.toJson();
map["siblings"] = _siblings;
map["fee_structure"] = _feeStructure?.map((e) => e.toJson()).toList();
map["guardian"] = _guardian?.toJson();
map["attendance"] = _attendance?.map((e) => e.toJson()).toList();
map["generate_fee"] = _generateFee?.map((e) => e.toJson()).toList();
map["master_fee"] = _masterFee?.map((e) => e.toJson()).toList();
map["exam_marks"] = _examMarks;
map["fee_particular"] = _feeParticular;
map["medical"] = _medical?.toJson();
map["attachment"] = _attachment;
map["document"] = _document;
map["datesheet"] = _datesheet;
map["timetable"] = _timetable?.map((e) => e.toJson()).toList();
map["discounts"] = _discounts;
map["total_monthly_fee"] = _totalMonthlyFee;
map["pending_fee"] = _pendingFee;
map["paid_fee"] = _paidFee;
return map;
}

}




class GenerateFee{
int? _id;
int? _businessId;
String? _feeMonthYear;
DateTime? _dueDate;
int? _bankId;
int? _classId;
int? _sectionId;
int? _studentId;
DateTime? _createdAt;
DateTime? _updatedAt;
dynamic _voucherNo;

int? get id => _id;
int? get businessId => _businessId;
String? get feeMonthYear => _feeMonthYear;
DateTime? get dueDate => _dueDate;
int? get bankId => _bankId;
int? get classId => _classId;
int? get sectionId => _sectionId;
int? get studentId => _studentId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
dynamic get voucherNo => _voucherNo;

GenerateFee({
int? id,
int? businessId,
String? feeMonthYear,
DateTime? dueDate,
int? bankId,
int? classId,
int? sectionId,
int? studentId,
DateTime? createdAt,
DateTime? updatedAt,
dynamic voucherNo,
}){
_id = id;
_businessId = businessId;
_feeMonthYear = feeMonthYear;
_dueDate = dueDate;
_bankId = bankId;
_classId = classId;
_sectionId = sectionId;
_studentId = studentId;
_createdAt = createdAt;
_updatedAt = updatedAt;
_voucherNo = voucherNo;
}


GenerateFee.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_businessId = json["business_id"] as int?;
_feeMonthYear = json["fee_month_year"] as String?;
_dueDate = json["due_date"] != null? DateTime.tryParse(json["due_date"].toString()):null ;
_bankId = json["bank_id"] as int?;
_classId = json["class_id"] as int?;
_sectionId = json["section_id"] as int?;
_studentId = json["student_id"] as int?;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_voucherNo = json["voucher_no"];
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["business_id"] = _businessId;
map["fee_month_year"] = _feeMonthYear;
map["due_date"] = _dueDate?.toString();
map["bank_id"] = _bankId;
map["class_id"] = _classId;
map["section_id"] = _sectionId;
map["student_id"] = _studentId;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["voucher_no"] = _voucherNo;
return map;
}

}


class MasterFee{
int? _id;
int? _studentId;
String? _status;
dynamic _discountAmount;
dynamic _paymentDate;
dynamic _fine;
String? _paidFeeAmount;
String? _pendingFeeAmount;
String? _monthlyFeeAmount;
int? _businessId;
int? _generateFeeId;
String? _paymentMode;
dynamic _note;
dynamic _createdBy;
dynamic _updatedBy;
DateTime? _createdAt;
DateTime? _updatedAt;

int? get id => _id;
int? get studentId => _studentId;
String? get status => _status;
dynamic get discountAmount => _discountAmount;
dynamic get paymentDate => _paymentDate;
dynamic get fine => _fine;
String? get paidFeeAmount => _paidFeeAmount;
String? get pendingFeeAmount => _pendingFeeAmount;
String? get monthlyFeeAmount => _monthlyFeeAmount;
int? get businessId => _businessId;
int? get generateFeeId => _generateFeeId;
String? get paymentMode => _paymentMode;
dynamic get note => _note;
dynamic get createdBy => _createdBy;
dynamic get updatedBy => _updatedBy;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;

MasterFee({
int? id,
int? studentId,
String? status,
dynamic discountAmount,
dynamic paymentDate,
dynamic fine,
String? paidFeeAmount,
String? pendingFeeAmount,
String? monthlyFeeAmount,
int? businessId,
int? generateFeeId,
String? paymentMode,
dynamic note,
dynamic createdBy,
dynamic updatedBy,
DateTime? createdAt,
DateTime? updatedAt,
}){
_id = id;
_studentId = studentId;
_status = status;
_discountAmount = discountAmount;
_paymentDate = paymentDate;
_fine = fine;
_paidFeeAmount = paidFeeAmount;
_pendingFeeAmount = pendingFeeAmount;
_monthlyFeeAmount = monthlyFeeAmount;
_businessId = businessId;
_generateFeeId = generateFeeId;
_paymentMode = paymentMode;
_note = note;
_createdBy = createdBy;
_updatedBy = updatedBy;
_createdAt = createdAt;
_updatedAt = updatedAt;
}


MasterFee.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_studentId = json["student_id"] as int?;
_status = json["status"] as String?;
_discountAmount = json["discount_amount"];
_paymentDate = json["payment_date"];
_fine = json["fine"];
_paidFeeAmount = json["paid_fee_amount"] as String?;
_pendingFeeAmount = json["pending_fee_amount"] as String?;
_monthlyFeeAmount = json["monthly_fee_amount"] as String?;
_businessId = json["business_id"] as int?;
_generateFeeId = json["generate_fee_id"] as int?;
_paymentMode = json["payment_mode"] as String?;
_note = json["note"];
_createdBy = json["created_by"];
_updatedBy = json["updated_by"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["student_id"] = _studentId;
map["status"] = _status;
map["discount_amount"] = _discountAmount;
map["payment_date"] = _paymentDate;
map["fine"] = _fine;
map["paid_fee_amount"] = _paidFeeAmount;
map["pending_fee_amount"] = _pendingFeeAmount;
map["monthly_fee_amount"] = _monthlyFeeAmount;
map["business_id"] = _businessId;
map["generate_fee_id"] = _generateFeeId;
map["payment_mode"] = _paymentMode;
map["note"] = _note;
map["created_by"] = _createdBy;
map["updated_by"] = _updatedBy;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
return map;
}

}


class Medical{
int? _id;
int? _contactId;
dynamic _height;
dynamic _weight;
dynamic _measurementDate;
dynamic _medicalHistory;
dynamic _bloodGroup;
dynamic _disability;
dynamic _age;
dynamic _createdBy;
dynamic _lastUpdatedBy;
int? _businessId;
int? _userId;
DateTime? _createdAt;
DateTime? _updatedAt;

int? get id => _id;
int? get contactId => _contactId;
dynamic get height => _height;
dynamic get weight => _weight;
dynamic get measurementDate => _measurementDate;
dynamic get medicalHistory => _medicalHistory;
dynamic get bloodGroup => _bloodGroup;
dynamic get disability => _disability;
dynamic get age => _age;
dynamic get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
int? get businessId => _businessId;
int? get userId => _userId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;

Medical({
int? id,
int? contactId,
dynamic height,
dynamic weight,
dynamic measurementDate,
dynamic medicalHistory,
dynamic bloodGroup,
dynamic disability,
dynamic age,
dynamic createdBy,
dynamic lastUpdatedBy,
int? businessId,
int? userId,
DateTime? createdAt,
DateTime? updatedAt,
}){
_id = id;
_contactId = contactId;
_height = height;
_weight = weight;
_measurementDate = measurementDate;
_medicalHistory = medicalHistory;
_bloodGroup = bloodGroup;
_disability = disability;
_age = age;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_businessId = businessId;
_userId = userId;
_createdAt = createdAt;
_updatedAt = updatedAt;
}


Medical.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_contactId = json["contact_id"] as int?;
_height = json["height"];
_weight = json["weight"];
_measurementDate = json["measurement_date"];
_medicalHistory = json["medical_history"];
_bloodGroup = json["blood_group"];
_disability = json["disability"];
_age = json["age"];
_createdBy = json["created_by"];
_lastUpdatedBy = json["last_updated_by"];
_businessId = json["business_id"] as int?;
_userId = json["user_id"] as int?;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["contact_id"] = _contactId;
map["height"] = _height;
map["weight"] = _weight;
map["measurement_date"] = _measurementDate;
map["medical_history"] = _medicalHistory;
map["blood_group"] = _bloodGroup;
map["disability"] = _disability;
map["age"] = _age;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["business_id"] = _businessId;
map["user_id"] = _userId;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
return map;
}

}


