part of 'auth_bloc.dart';

final class AuthState extends Equatable {
  const AuthState({
    this.authResponseModel,
    this.error,
    this.isLoading = false,
    this.isSuccessful = false,
  });

  factory AuthState.initial() {
    return const AuthState();
  }

  final AuthResponseModel<User>? authResponseModel;
  final Error? error;
  final bool isLoading;
  final bool isSuccessful;

  AuthState copyWith({
    AuthResponseModel<User>? authResponseModel,
    Error? error,
    bool? isLoading,
    bool? isSuccessful,
  }) {
    return AuthState(
      authResponseModel: authResponseModel ?? this.authResponseModel,
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      isSuccessful: isSuccessful ?? this.isSuccessful,
    );
  }

  @override
  List<Object> get props => [
        authResponseModel ?? AuthResponseModel<void>.empty(),
        isLoading,
        error ?? Error(),
        isSuccessful,
      ];
}
