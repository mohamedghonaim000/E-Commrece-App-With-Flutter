part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}
class LoginLoading extends AuthState{}
class LoginSuccess extends AuthState{}
class LoginFailure extends AuthState{
  final String errMsg;
  LoginFailure(this.errMsg);
}
// Sign up states
class SignUpLoading extends AuthState{}
class SignUpSuccess extends AuthState{}
class SignUpFailure extends AuthState{
  final String errMsg;
  SignUpFailure(this.errMsg);
}


