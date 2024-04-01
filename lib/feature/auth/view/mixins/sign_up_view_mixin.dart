part of '../sign_up_view.dart';

mixin _SignUpViewMixin on State<SignUpView> {
  final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordFormKey = GlobalKey<FormState>();

  final _emailController = TextEditingController(text: 'mucahitsmsk@icloud.com');
  final _passwordController = TextEditingController(text: '123.*_0?aAa');

  void _signUp() {
    if (_emailFormKey.currentState!.validate() && _passwordFormKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            SignUpEvent(
              user: User(
                email: _emailController.text,
                password: _passwordController.text,
              ),
            ),
          );
    }
  }
}
