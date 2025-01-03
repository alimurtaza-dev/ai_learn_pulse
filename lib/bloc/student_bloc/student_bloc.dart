import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app_constants/app_constants.dart';
import '../../models/time_table/time_table.dart';
import '../../repository/student_repository/student_repository.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final StudentRepository studentRepository;

  StudentBloc({required this.studentRepository}) : super(StudentState()) {
    on<StudentEvent>(_onFetchTimetable);
    on<SelectDayEvent>(_onSelectDay);
  }

  Future<void> _onFetchTimetable(
      StudentEvent event, Emitter<StudentState> emit) async {
    emit(state.copyWith(status: StudentStatus.loading));

    try {
      final authStudent = await studentRepository.getAuthStudent();
      final timetable = authStudent.data?.timetable;

      emit(state.copyWith(
        timetable: timetable,
        status: StudentStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        message: e.toString(),
        status: StudentStatus.error,
      ));
    }
  }

  void _onSelectDay(SelectDayEvent event, Emitter<StudentState> emit) {
    emit(state.copyWith(selectedDay: event.day));
  }
}
