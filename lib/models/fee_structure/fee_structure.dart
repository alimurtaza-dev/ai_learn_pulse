class FeeStructure{
int? _id;
int? _feeAssignId;
String? _discountId;
String? _discountType;
int? _discountAmount;
int? _classMonthlyFee;
int? _studentId;
int? _classId;
int? _businessId;
DateTime? _createdAt;
DateTime? _updatedAt;

int? get id => _id;
int? get feeAssignId => _feeAssignId;
String? get discountId => _discountId;
String? get discountType => _discountType;
int? get discountAmount => _discountAmount;
int? get classMonthlyFee => _classMonthlyFee;
int? get studentId => _studentId;
int? get classId => _classId;
int? get businessId => _businessId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;

FeeStructure({
int? id,
int? feeAssignId,
String? discountId,
String? discountType,
int? discountAmount,
int? classMonthlyFee,
int? studentId,
int? classId,
int? businessId,
DateTime? createdAt,
DateTime? updatedAt,
}){
_id = id;
_feeAssignId = feeAssignId;
_discountId = discountId;
_discountType = discountType;
_discountAmount = discountAmount;
_classMonthlyFee = classMonthlyFee;
_studentId = studentId;
_classId = classId;
_businessId = businessId;
_createdAt = createdAt;
_updatedAt = updatedAt;
}


FeeStructure.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_feeAssignId = json["fee_assign_id"] as int?;
_discountId = json["discount_id"] as String?;
_discountType = json["discount_type"] as String?;
_discountAmount = json["discount_amount"] as int?;
_classMonthlyFee = json["class_monthly_fee"] as int?;
_studentId = json["student_id"] as int?;
_classId = json["class_id"] as int?;
_businessId = json["business_id"] as int?;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["fee_assign_id"] = _feeAssignId;
map["discount_id"] = _discountId;
map["discount_type"] = _discountType;
map["discount_amount"] = _discountAmount;
map["class_monthly_fee"] = _classMonthlyFee;
map["student_id"] = _studentId;
map["class_id"] = _classId;
map["business_id"] = _businessId;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
return map;
}

}

