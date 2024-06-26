part of '../sign_in_view.dart';

mixin _SignInViewMixin on State<SignInView> {
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();

  final _emailController = TextEditingController(text: 'mucahitsmsk@icloud.com');
  final _passwordController = TextEditingController(text: '123.*_0?aAa');

  void _signIn() {
    if (_emailFormKey.currentState == null || _passwordFormKey.currentState == null) return;

    if (_emailFormKey.currentState!.validate() && _passwordFormKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            SignInEvent(
              user: User(
                email: _emailController.text,
                password: _passwordController.text,
              ),
            ),
          );
    }
  }
}
