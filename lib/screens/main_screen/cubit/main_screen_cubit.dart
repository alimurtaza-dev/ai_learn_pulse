import 'package:flutter_bloc/flutter_bloc.dart';

enum MainScreenState { home, map, profile }

// Define cubit to manage state
class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit() : super(MainScreenState.home);

  void updateIndex(MainScreenState state) => emit(state);
}
