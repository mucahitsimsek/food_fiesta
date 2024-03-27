part of '../sign_in_view.dart';

mixin _SignInViewMixin on State<SignInView> {
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();

  void _nextPage(String path) {
    context.navigateNamedTo(path);
  }
}
