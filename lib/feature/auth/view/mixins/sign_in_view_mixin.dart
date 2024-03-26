part of '../sign_in_view.dart';

mixin _SignInViewMixin on State<SignInView> {
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();

  final ValueNotifier<bool> _isVisibleDone = ValueNotifier<bool>(false);

  String? _emailValidator(String? value) {
    _isVisibleDone.value = false;
    if (value!.ext.isNullOrEmpty) {
      return 'Email is required';
    } else if (!value.ext.isValidEmail) {
      return 'Email is not valid';
    }
    _isVisibleDone.value = true;
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value!.ext.isNullOrEmpty) {
      return 'Password is required';
    } else if (!value.ext.isValidPassword) {
      return 'Password is not valid';
    }
    return null;
  }

  void _nextPage(String path) {
    context.router.pushNamed(path);
  }
}
