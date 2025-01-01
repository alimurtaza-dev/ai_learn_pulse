class Addresses{
int? _id;
String? _city;
String? _country;
String? _state;
String? _addressLine1;
String? _addressLine2;
String? _zipCode;
int? _businessId;
dynamic _companyId;
int? _contactId;
int? _createdBy;
dynamic _lastUpdatedBy;
dynamic _prospectId;
int? _userId;
DateTime? _createdAt;
DateTime? _updatedAt;

int? get id => _id;
String? get city => _city;
String? get country => _country;
String? get state => _state;
String? get addressLine1 => _addressLine1;
String? get addressLine2 => _addressLine2;
String? get zipCode => _zipCode;
int? get businessId => _businessId;
dynamic get companyId => _companyId;
int? get contactId => _contactId;
int? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
dynamic get prospectId => _prospectId;
int? get userId => _userId;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;

Addresses({
int? id,
String? city,
String? country,
String? state,
String? addressLine1,
String? addressLine2,
String? zipCode,
int? businessId,
dynamic companyId,
int? contactId,
int? createdBy,
dynamic lastUpdatedBy,
dynamic prospectId,
int? userId,
DateTime? createdAt,
DateTime? updatedAt,
}){
_id = id;
_city = city;
_country = country;
_state = state;
_addressLine1 = addressLine1;
_addressLine2 = addressLine2;
_zipCode = zipCode;
_businessId = businessId;
_companyId = companyId;
_contactId = contactId;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_prospectId = prospectId;
_userId = userId;
_createdAt = createdAt;
_updatedAt = updatedAt;
}


Addresses.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_city = json["city"] as String?;
_country = json["country"] as String?;
_state = json["state"] as String?;
_addressLine1 = json["address_line_1"] as String?;
_addressLine2 = json["address_line_2"] as String?;
_zipCode = json["zip_code"] as String?;
_businessId = json["business_id"] as int?;
_companyId = json["company_id"];
_contactId = json["contact_id"] as int?;
_createdBy = json["created_by"] as int?;
_lastUpdatedBy = json["last_updated_by"];
_prospectId = json["prospect_id"];
_userId = json["user_id"] as int?;
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["city"] = _city;
map["country"] = _country;
map["state"] = _state;
map["address_line_1"] = _addressLine1;
map["address_line_2"] = _addressLine2;
map["zip_code"] = _zipCode;
map["business_id"] = _businessId;
map["company_id"] = _companyId;
map["contact_id"] = _contactId;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["prospect_id"] = _prospectId;
map["user_id"] = _userId;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
return map;
}

}

