part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationFailed extends AuthenticationState {
  final String message;
  AuthenticationFailed({this.message});
  @override
  List<Object> get props => [message];
}

class AuthenticationSuccessful extends AuthenticationState {}

class LoadingOn extends AuthenticationState {}

class LoadingOff extends AuthenticationState {}
