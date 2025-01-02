class ImageUrls{
String? _fatherIdPic;
String? _motherIdPic;
String? _guardianIdPic;

String? get fatherIdPic => _fatherIdPic;
String? get motherIdPic => _motherIdPic;
String? get guardianIdPic => _guardianIdPic;

ImageUrls({
String? fatherIdPic,
String? motherIdPic,
String? guardianIdPic,
}){
_fatherIdPic = fatherIdPic;
_motherIdPic = motherIdPic;
_guardianIdPic = guardianIdPic;
}


ImageUrls.fromJson(dynamic json){
if(json is Map){
_fatherIdPic = json["father_id_pic"] as String?;
_motherIdPic = json["mother_id_pic"] as String?;
_guardianIdPic = json["guardian_id_pic"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["father_id_pic"] = _fatherIdPic;
map["mother_id_pic"] = _motherIdPic;
map["guardian_id_pic"] = _guardianIdPic;
return map;
}

}

