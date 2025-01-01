class Contacts{
int? _id;
String? _fName;
String? _lName;
DateTime? _dob;
String? _gender;
dynamic _mobileNo;
dynamic _religion;
dynamic _photo;
dynamic _placeOfBirth;
dynamic _nationality;
dynamic _caste;
dynamic _phone;
dynamic _homeLanguage;
dynamic _secondLanguageProficiency;
dynamic _birthOrder;
int? _noOfSiblings;
dynamic _citizenship;
int? _userId;
int? _businessId;
int? _createdBy;
dynamic _lastUpdatedBy;
DateTime? _createdAt;
DateTime? _updatedAt;
String? _imageUrl;

int? get id => _id;
String? get fName => _fName;
String? get lName => _lName;
DateTime? get dob => _dob;
String? get gender => _gender;
dynamic get mobileNo => _mobileNo;
dynamic get religion => _religion;
dynamic get photo => _photo;
dynamic get placeOfBirth => _placeOfBirth;
dynamic get nationality => _nationality;
dynamic get caste => _caste;
dynamic get phone => _phone;
dynamic get homeLanguage => _homeLanguage;
dynamic get secondLanguageProficiency => _secondLanguageProficiency;
dynamic get birthOrder => _birthOrder;
int? get noOfSiblings => _noOfSiblings;
dynamic get citizenship => _citizenship;
int? get userId => _userId;
int? get businessId => _businessId;
int? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
String? get imageUrl => _imageUrl;

Contacts({
int? id,
String? fName,
String? lName,
DateTime? dob,
String? gender,
dynamic mobileNo,
dynamic religion,
dynamic photo,
dynamic placeOfBirth,
dynamic nationality,
dynamic caste,
dynamic phone,
dynamic homeLanguage,
dynamic secondLanguageProficiency,
dynamic birthOrder,
int? noOfSiblings,
dynamic citizenship,
int? userId,
int? businessId,
int? createdBy,
dynamic lastUpdatedBy,
DateTime? createdAt,
DateTime? updatedAt,
String? imageUrl,
}){
_id = id;
_fName = fName;
_lName = lName;
_dob = dob;
_gender = gender;
_mobileNo = mobileNo;
_religion = religion;
_photo = photo;
_placeOfBirth = placeOfBirth;
_nationality = nationality;
_caste = caste;
_phone = phone;
_homeLanguage = homeLanguage;
_secondLanguageProficiency = secondLanguageProficiency;
_birthOrder = birthOrder;
_noOfSiblings = noOfSiblings;
_citizenship = citizenship;
_userId = userId;
_businessId = businessId;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_createdAt = createdAt;
_updatedAt = updatedAt;
_imageUrl = imageUrl;
}


Contacts.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_fName = json["f_name"] as String?;
_lName = json["l_name"] as String?;
_dob = json["dob"] != null? DateTime.tryParse(json["dob"].toString()):null ;
_gender = json["gender"] as String?;
_mobileNo = json["mobile_no"];
_religion = json["religion"];
_photo = json["photo"];
_placeOfBirth = json["place_of_birth"];
_nationality = json["nationality"];
_caste = json["caste"];
_phone = json["phone"];
_homeLanguage = json["home_language"];
_secondLanguageProficiency = json["second_language_proficiency"];
_birthOrder = json["birth_order"];
_noOfSiblings = json["no_of_siblings"] as int?;
_citizenship = json["citizenship"];
_userId = json["user_id"] as int?;
_businessId = json["business_id"] as int?;
_createdBy = json["created_by"] as int?;
_lastUpdatedBy = json["last_updated_by"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_imageUrl = json["image_url"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["f_name"] = _fName;
map["l_name"] = _lName;
map["dob"] = _dob?.toString();
map["gender"] = _gender;
map["mobile_no"] = _mobileNo;
map["religion"] = _religion;
map["photo"] = _photo;
map["place_of_birth"] = _placeOfBirth;
map["nationality"] = _nationality;
map["caste"] = _caste;
map["phone"] = _phone;
map["home_language"] = _homeLanguage;
map["second_language_proficiency"] = _secondLanguageProficiency;
map["birth_order"] = _birthOrder;
map["no_of_siblings"] = _noOfSiblings;
map["citizenship"] = _citizenship;
map["user_id"] = _userId;
map["business_id"] = _businessId;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["image_url"] = _imageUrl;
return map;
}

}

