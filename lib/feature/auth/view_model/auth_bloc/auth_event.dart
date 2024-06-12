part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object> get props => [];
}

class SignInEvent extends AuthEvent {
  const SignInEvent({
    required this.user,
  });
  final User user;

  @override
  List<Object> get props => [
        user,
      ];
}

class SignUpEvent extends AuthEvent {
  const SignUpEvent({
    required this.user,
  });

  final User user;

  @override
  List<Object> get props => [
        user,
      ];
}

class SignOutEvent extends AuthEvent {}
