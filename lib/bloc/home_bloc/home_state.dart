part of 'home_bloc.dart';

sealed class HomeStates extends Equatable {
  const HomeStates();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeStates {
  final TabChangeStates tabState;

  const HomeInitial({this.tabState = TabChangeStates.home});

  @override
  List<Object> get props => [tabState];
}