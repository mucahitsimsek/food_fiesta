part of 'auth_bloc.dart';

final class AuthState extends Equatable {
  const AuthState({
    this.authResponseModel,
    this.error,
    this.isLoading = false,
    this.signInSuccess = false,
    this.signUpSuccess = false,
  });

  factory AuthState.initial() {
    return const AuthState();
  }

  final AuthResponseModel<User>? authResponseModel;
  final Error? error;
  final bool isLoading;
  final bool signInSuccess;
  final bool signUpSuccess;

  AuthState copyWith({
    AuthResponseModel<User>? authResponseModel,
    Error? error,
    bool? isLoading,
    bool? signInSuccess,
    bool? signUpSuccess,
  }) {
    return AuthState(
      authResponseModel: authResponseModel ?? this.authResponseModel,
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      signInSuccess: signInSuccess ?? this.signInSuccess,
      signUpSuccess: signUpSuccess ?? this.signUpSuccess,
    );
  }

  @override
  List<Object> get props => [
        authResponseModel ?? AuthResponseModel<void>.empty(),
        isLoading,
        error ?? Error(),
        signInSuccess,
        signUpSuccess,
      ];
}
