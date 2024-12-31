import 'package:equatable/equatable.dart';

abstract class ProfileState extends Equatable {
  @override
  List<Object> get props => [];
}

class ProfileInitState extends ProfileState {}

class LoadingState extends ProfileState {}

class ProfileUpdatedState extends ProfileState {
  ProfileUpdatedState();
}

class FailedState extends ProfileState {
  final String? message;

  FailedState(this.message);
}
