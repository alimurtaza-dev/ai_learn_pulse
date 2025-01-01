import 'package:ai_learn_pulse/repository/auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../main.dart';
import '../../services/storage/session_manager/session_controller.dart';

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
    final loginResponse = await authRepository.userlogin(state.phone, state.password);
    if (loginResponse.message == "Login successful") {
      if (loginResponse.data?.first.token?.isEmpty==true) {
        emit(state.copyWith(message: 'Login successful, but token is missing.'));
        return;
      }
      final sessionController = getIt<SessionController>();
      await sessionController.saveUserToken(loginResponse.data?.first.token??'');
      final userDataResponse = await authRepository.fetchLoggedinUserData();

      if ((userDataResponse.success ?? false) && userDataResponse.data != null)  {
         sessionController.saveUser(userDataResponse.data??[]);
        emit(state.copyWith(message: 'Login successful.'));
      } else {
        emit(state.copyWith(message: 'Failed to fetch user data.'));
      }
    } else {
      // Handle login failure
      emit(state.copyWith(message: loginResponse.message));
    }
  } catch (e) {
    // Handle errors
    emit(state.copyWith(message: e.toString()));
  }
}

}
