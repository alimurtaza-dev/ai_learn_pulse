import 'package:ai_learn_pulse/repository/auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../services/session_manager/session_controller.dart';

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
    emit(state.copyWith(status: LoginStatus.loading));

    try {
      final loginResponse =
          await authRepository.userlogin(state.phone, state.password);

      if (loginResponse.data?.first.token?.isEmpty == true) {
        emit(state.copyWith(
          status: LoginStatus.error,
          message: 'Unauthorized.',
        ));
        return;
      }

      if (loginResponse.data != null && (loginResponse.success ?? false)) {
        final sessionController = SessionController();
        await sessionController
            .saveUserToken(loginResponse.data?.first.token ?? '');

        final userDataResponse = await authRepository.fetchLoggedinUserData();

        if ((userDataResponse.success ?? false) &&
            userDataResponse.data != null) {
          sessionController.saveUser(userDataResponse.data ?? []);
          await sessionController.getUserFromPreference();
          emit(state.copyWith(
            status: LoginStatus.success,
            message: loginResponse.message ?? 'Login Successfully.',
          ));
        } else {
          emit(state.copyWith(
            status: LoginStatus.error,
            message: loginResponse.message ?? 'Unable to fetch user data.',
          ));
        }
      } else {
        emit(state.copyWith(
          status: LoginStatus.error,
          message: 'Login failed. Please try again.',
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: LoginStatus.error,
        message: 'An error occurred: $e',
      ));
    }
  }
}
