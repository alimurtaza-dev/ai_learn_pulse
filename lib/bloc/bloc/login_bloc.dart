import 'package:ai_learn_pulse/repository/auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final AuthRepository authRepository;
  LoginBloc({required this.authRepository}) : super(LoginStates()) {
    on<EmailChanged>(_onPhoneChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_onFormSubmitted);
  }

  void _onPhoneChanged(EmailChanged event, Emitter<LoginStates> emit) {
    emit(
      state.copyWith(phone: event.phone),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void _onFormSubmitted(
    LoginApi event,
    Emitter<LoginStates> emit,
  ) async {
    emit(state.copyWith(message: 'Logging in...'));

    try {
      final response = await authRepository.login(state.phone, state.password);
      emit(state.copyWith(message: response.message));
      // Navigate to the main screen or handle the response as needed
    } catch (e) {
      emit(state.copyWith(message: e.toString()));
    }
  }
}
