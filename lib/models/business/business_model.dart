class Business{
int? _id;
String? _name;
String? _address;
String? _city;
String? _state;
String? _country;
String? _landmark;
String? _photo;
dynamic _startMonth;
dynamic _dateFormate;
dynamic _timeZone;
dynamic _weekStart;
dynamic _baseUrl;
int? _createdBy;
dynamic _lastUpdatedBy;
DateTime? _createdAt;
DateTime? _updatedAt;
dynamic _sessionId;
String? _imageUrl;

int? get id => _id;
String? get name => _name;
String? get address => _address;
String? get city => _city;
String? get state => _state;
String? get country => _country;
String? get landmark => _landmark;
String? get photo => _photo;
dynamic get startMonth => _startMonth;
dynamic get dateFormate => _dateFormate;
dynamic get timeZone => _timeZone;
dynamic get weekStart => _weekStart;
dynamic get baseUrl => _baseUrl;
int? get createdBy => _createdBy;
dynamic get lastUpdatedBy => _lastUpdatedBy;
DateTime? get createdAt => _createdAt;
DateTime? get updatedAt => _updatedAt;
dynamic get sessionId => _sessionId;
String? get imageUrl => _imageUrl;

Business({
int? id,
String? name,
String? address,
String? city,
String? state,
String? country,
String? landmark,
String? photo,
dynamic startMonth,
dynamic dateFormate,
dynamic timeZone,
dynamic weekStart,
dynamic baseUrl,
int? createdBy,
dynamic lastUpdatedBy,
DateTime? createdAt,
DateTime? updatedAt,
dynamic sessionId,
String? imageUrl,
}){
_id = id;
_name = name;
_address = address;
_city = city;
_state = state;
_country = country;
_landmark = landmark;
_photo = photo;
_startMonth = startMonth;
_dateFormate = dateFormate;
_timeZone = timeZone;
_weekStart = weekStart;
_baseUrl = baseUrl;
_createdBy = createdBy;
_lastUpdatedBy = lastUpdatedBy;
_createdAt = createdAt;
_updatedAt = updatedAt;
_sessionId = sessionId;
_imageUrl = imageUrl;
}


Business.fromJson(dynamic json){
if(json is Map){
_id = json["id"] as int?;
_name = json["name"] as String?;
_address = json["address"] as String?;
_city = json["city"] as String?;
_state = json["state"] as String?;
_country = json["country"] as String?;
_landmark = json["landmark"] as String?;
_photo = json["photo"] as String?;
_startMonth = json["start_month"];
_dateFormate = json["date_formate"];
_timeZone = json["time_zone"];
_weekStart = json["week_start"];
_baseUrl = json["base_url"];
_createdBy = json["created_by"] as int?;
_lastUpdatedBy = json["last_updated_by"];
_createdAt = json["created_at"] != null? DateTime.tryParse(json["created_at"].toString()):null ;
_updatedAt = json["updated_at"] != null? DateTime.tryParse(json["updated_at"].toString()):null ;
_sessionId = json["session_id"];
_imageUrl = json["image_url"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["id"] = _id;
map["name"] = _name;
map["address"] = _address;
map["city"] = _city;
map["state"] = _state;
map["country"] = _country;
map["landmark"] = _landmark;
map["photo"] = _photo;
map["start_month"] = _startMonth;
map["date_formate"] = _dateFormate;
map["time_zone"] = _timeZone;
map["week_start"] = _weekStart;
map["base_url"] = _baseUrl;
map["created_by"] = _createdBy;
map["last_updated_by"] = _lastUpdatedBy;
map["created_at"] = _createdAt?.toString();
map["updated_at"] = _updatedAt?.toString();
map["session_id"] = _sessionId;
map["image_url"] = _imageUrl;
return map;
}

}
