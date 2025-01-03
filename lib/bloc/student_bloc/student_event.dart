part of 'student_bloc.dart';

sealed class StudentEvent extends Equatable {
  const StudentEvent();

  @override
  List<Object> get props => [];
}

class FetchTimetableEvent extends StudentEvent {} 
class SelectDayEvent extends StudentEvent { 
  final String day;

  const SelectDayEvent(this.day);

  @override
  List<Object> get props => [day];
}