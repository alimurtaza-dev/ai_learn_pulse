part of 'student_bloc.dart';

enum StudentStatus { initial, loading, success, error }

class StudentState extends Equatable {
  final List<Timetable> timetable;
  final String selectedDay;
  final String message;
  final StudentStatus status;

  StudentState({
    this.timetable = const [],
    String? selectedDay,
    this.message = '',
    this.status = StudentStatus.initial,
  }) : selectedDay = selectedDay ?? AppConstants.dayTabsList.first;

  StudentState copyWith({
    List<Timetable>? timetable,
    String? selectedDay,
    String? message,
    StudentStatus? status,
  }) {
    return StudentState(
      timetable: timetable ?? this.timetable,
      selectedDay: selectedDay ?? this.selectedDay,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [timetable, selectedDay, message, status];
}
