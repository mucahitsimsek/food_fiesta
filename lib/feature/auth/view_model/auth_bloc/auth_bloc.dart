import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:food_fiesta/product/cache/model/user_cache_model.dart';
import 'package:food_fiesta/product/service/login_service.dart';
import 'package:food_fiesta/product/service/user_service.dart';
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

  final _userService = UserService(
    networkManager: ProductStateItems.networkManager,
  );

  final _userCache = ProductStateItems.productCache.userCacheOperation;

  Future<void> _signIn(User user) async {
    emitState(
      state.copyWith(
        isLoading: true,
        signInSuccess: false,
        signUpSuccess: false,
        error: Error(),
      ),
    );
    final signInResponse = await _loginService.signIn(
      user: user,
    );

    if (signInResponse.error != null) {
      emitState(
        state.copyWith(
          isLoading: false,
          signInSuccess: false,
          signUpSuccess: false,
          error: signInResponse.error?.error,
        ),
      );
      return;
    }

    if (signInResponse.data == null) {
      emitState(
        state.copyWith(
          isLoading: false,
          signInSuccess: false,
          signUpSuccess: false,
          error: Error(
            message: ErrorMessages.userNotFound.value.tr(),
          ),
        ),
      );
      return;
    }

    if (signInResponse.data != null && signInResponse.data?.localId != null) {
      final userData = signInResponse.data?.copyWith(password: user.password);

      _userCache.add(
        UserCacheModel(
          id: StorageKeys.user.name,
          user: userData,
        ),
      );

      final createdUser = await _userService.createUser(
        userId: signInResponse.data!.localId!,
        user: userData!,
        token: signInResponse.data!.idToken!,
      );

      if (createdUser.data == null) {
        _userCache.remove(StorageKeys.user.name);
        emitState(
          state.copyWith(
            isLoading: false,
            signInSuccess: false,
            signUpSuccess: false,
            error: Error(
              message: ErrorMessages.unknownError.value.tr(),
            ),
          ),
        );
        return;
      }

      emitState(
        state.copyWith(
          isLoading: false,
          error: Error(),
          signInSuccess: true,
          signUpSuccess: false,
          authResponseModel: signInResponse,
        ),
      );
      return;
    }

    emitState(state.copyWith(isLoading: false));
  }

  Future<void> _signUp(User user) async {
    emitState(
      state.copyWith(
        isLoading: true,
        signInSuccess: false,
        signUpSuccess: false,
        error: Error(),
      ),
    );
    final signUpResponse = await _loginService.signUp(
      user: user,
    );

    if (signUpResponse.error != null) {
      emitState(
        state.copyWith(
          isLoading: false,
          signInSuccess: false,
          signUpSuccess: false,
          error: signUpResponse.error?.error,
        ),
      );
      return;
    }
    if (signUpResponse.data == null) {
      emitState(
        state.copyWith(
          isLoading: false,
          signInSuccess: false,
          signUpSuccess: false,
          error: Error(
            message: ErrorMessages.userNotFound.value.tr(),
          ),
        ),
      );
      return;
    }
    if (signUpResponse.data != null) {
      emitState(
        state.copyWith(
          isLoading: false,
          error: Error(),
          signInSuccess: false,
          signUpSuccess: true,
          authResponseModel: signUpResponse,
        ),
      );
      return;
    }

    emitState(
      state.copyWith(
        isLoading: false,
      ),
    );
  }
}
