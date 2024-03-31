import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:food_fiesta/product/cache/model/user_cache_model.dart';
import 'package:food_fiesta/product/service/login_service.dart';
import 'package:food_fiesta/product/state/base/base_bloc.dart';
import 'package:food_fiesta/product/state/container/index.dart';
import 'package:food_fiesta/product/utility/constants/enums/error_messages.dart';
import 'package:food_fiesta/product/utility/constants/enums/storage_keys.dart';
import 'package:gen/gen.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<SignInEvent>((event, emit) async => _signIn(event.user));

    on<SignUpEvent>((event, emit) async => _signUp(event.user));

    on<SignOutEvent>((event, emit) {});
  }

  final _loginService = LoginService(
    networkManager: ProductStateItems.authNetworkManager,
  );

  final _userCache = ProductStateItems.productCache.userCacheOperation;

  Future<void> _signIn(User user) async {
    emitState(state.copyWith(isLoading: true));
    final signInResponse = await _loginService.signIn(
      user: user,
    );

    if (signInResponse.error != null) {
      log('Error: ${signInResponse.error?.error}');
      emitState(
        state.copyWith(
          isLoading: false,
          isSuccessful: false,
          error: signInResponse.error?.error,
        ),
      );
      return;
    }
    if (signInResponse.data == null) {
      emitState(
        state.copyWith(
          isLoading: false,
          isSuccessful: false,
          error: Error(
            message: ErrorMessages.userNotFound.value.tr(),
          ),
        ),
      );
      return;
    }
    if (signInResponse.data != null) {
      _userCache.add(
        UserCacheModel(
          id: StorageKeys.user.name,
          user: signInResponse.data,
        ),
      );
      emitState(
        state.copyWith(
          isLoading: false,
          error: Error(),
          isSuccessful: true,
          authResponseModel: signInResponse,
        ),
      );
      return;
    }

    emitState(state.copyWith(isLoading: false));
  }

  Future<void> _signUp(User user) async {
    final signUpResponse = await _loginService.signUp(
      user: user,
    );

    if (signUpResponse.error != null) {
      emitState(state.copyWith(isLoading: false));
      return;
    }

    return;
  }
}
