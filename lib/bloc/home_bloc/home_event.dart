part of 'home_bloc.dart';
abstract class HomeEvents extends Equatable {
  const HomeEvents();

  @override
  List<Object> get props => [];
}

class UpdateTabChangeStates extends HomeEvents {
  final  TabChangeStates tabState;

  const UpdateTabChangeStates(this.tabState);

  @override
  List<Object> get props => [tabState];
}