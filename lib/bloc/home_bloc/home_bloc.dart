import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';
enum TabChangeStates { home, timeTable, assessment, examination, settings }
class HomeBloc extends Bloc<HomeEvents, HomeStates> {
  HomeBloc() : super(const HomeInitial()) {
    on<UpdateTabChangeStates>(_onUpdateTabChangeStates);
  }

  void _onUpdateTabChangeStates(
    UpdateTabChangeStates event,
    Emitter<HomeStates> emit,
  ) {
    emit(HomeInitial(tabState: event.tabState));
  }
}