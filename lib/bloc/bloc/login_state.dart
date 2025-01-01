

part of "login_bloc.dart";

class LoginStates extends Equatable {
  const LoginStates({this.phone = '', this.password = '', this.message = ''});

  final String phone;
  final String password;
  final String message;

  LoginStates copyWith({String? phone, String? password, String? message,}) {
    return LoginStates(phone: phone ?? this.phone, password: password ?? this.password, message: message ?? this.message, );
  }

  @override
  List<Object> get props => [phone, password, message];
}
