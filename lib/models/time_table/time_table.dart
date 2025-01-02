import '../class/class_model.dart';
import '../course/course_model.dart';
import '../section/section_model.dart';
import '../teacher/teacher_model.dart';

class Timetable {
  int? _id;
  String? _day;
  ClassId? _classId;
  SectionId? _sectionId;
  TeacherId? _teacherId;
  CourseId? _courseId;
  int? _businessId;
  String? _timeFrom;
  String? _timeTo;
  String? _roomNo;
  int? _isBreak;
  DateTime? _createdAt;
  DateTime? _updatedAt;

  int? get id => _id;
  String? get day => _day;
  ClassId? get classId => _classId;
  SectionId? get sectionId => _sectionId;
  TeacherId? get teacherId => _teacherId;
  CourseId? get courseId => _courseId;
  int? get businessId => _businessId;
  String? get timeFrom => _timeFrom;
  String? get timeTo => _timeTo;
  String? get roomNo => _roomNo;
  int? get isBreak => _isBreak;
  DateTime? get createdAt => _createdAt;
  DateTime? get updatedAt => _updatedAt;

  Timetable({
    int? id,
    String? day,
    ClassId? classId,
    SectionId? sectionId,
    TeacherId? teacherId,
    CourseId? courseId,
    int? businessId,
    String? timeFrom,
    String? timeTo,
    String? roomNo,
    int? isBreak,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    _id = id;
    _day = day;
    _classId = classId;
    _sectionId = sectionId;
    _teacherId = teacherId;
    _courseId = courseId;
    _businessId = businessId;
    _timeFrom = timeFrom;
    _timeTo = timeTo;
    _roomNo = roomNo;
    _isBreak = isBreak;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Timetable.fromJson(dynamic json) {
    if (json is Map) {
      _id = json["id"] as int?;
      _day = json["day"] as String?;
      _classId =
          json["class_id"] != null ? ClassId.fromJson(json["class_id"]) : null;
      _sectionId = json["section_id"] != null
          ? SectionId.fromJson(json["section_id"])
          : null;
      _teacherId = json["teacher_id"] != null
          ? TeacherId.fromJson(json["teacher_id"])
          : null;
      _courseId = json["course_id"] != null
          ? CourseId.fromJson(json["course_id"])
          : null;
      _businessId = json["business_id"] as int?;
      _timeFrom = json["time_from"] as String?;
      _timeTo = json["time_to"] as String?;
      _roomNo = json["room_no"] as String?;
      _isBreak = json["is_break"] as int?;
      _createdAt = json["created_at"] != null
          ? DateTime.tryParse(json["created_at"].toString())
          : null;
      _updatedAt = json["updated_at"] != null
          ? DateTime.tryParse(json["updated_at"].toString())
          : null;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {};
    map["id"] = _id;
    map["day"] = _day;
    map["class_id"] = _classId?.toJson();
    map["section_id"] = _sectionId?.toJson();
    map["teacher_id"] = _teacherId?.toJson();
    map["course_id"] = _courseId?.toJson();
    map["business_id"] = _businessId;
    map["time_from"] = _timeFrom;
    map["time_to"] = _timeTo;
    map["room_no"] = _roomNo;
    map["is_break"] = _isBreak;
    map["created_at"] = _createdAt?.toString();
    map["updated_at"] = _updatedAt?.toString();
    return map;
  }
}
