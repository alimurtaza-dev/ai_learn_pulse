part of "login_bloc.dart";

enum LoginStatus { initial, loading, success, error }

class LoginStates extends Equatable {
  final String phone;
  final String password;
  final String message;
  final LoginStatus status;

  const LoginStates({
    this.phone = '',
    this.password = '',
    this.message = '',
    this.status = LoginStatus.initial,
  });

  LoginStates copyWith({
    String? phone,
    String? password,
    String? message,
    LoginStatus? status,
  }) {
    return LoginStates(
      phone: phone ?? this.phone,
      password: password ?? this.password,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [phone, password, message, status];
}