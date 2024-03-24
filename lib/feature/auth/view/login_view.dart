// ignore_for_file: public_member_api_docs

import 'package:architecture_template/product/utility/extensions/widget_ext.dart';
import 'package:architecture_template/product/widget/button/app_button.dart';
import 'package:architecture_template/product/widget/text_field/app_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Center(
            child: Text('Login View'),
          ),
          AppTextField(
            hintText: 'Email',
            obscureText: true,
          ),
          AppButton(
            title: 'Login',
          ),
        ],
      ).center,
    );
  }
}
