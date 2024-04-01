import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_fiesta/feature/auth/view_model/auth_bloc/auth_bloc.dart';
import 'package:food_fiesta/product/init/language/locale_keys.g.dart';
import 'package:food_fiesta/product/utility/bottom_sheet/custom_buttom_sheet.dart';
import 'package:food_fiesta/product/utility/errors/auth_error_handler.dart';
import 'package:food_fiesta/product/widget/app_column.dart';
import 'package:food_fiesta/product/widget/appbar/custom_appbar.dart';
import 'package:food_fiesta/product/widget/button/app_button.dart';
import 'package:food_fiesta/product/widget/button/facebook_button.dart';
import 'package:food_fiesta/product/widget/button/google_button.dart';
import 'package:food_fiesta/product/widget/gap/app_gap.dart';
import 'package:food_fiesta/product/widget/text/header_text.dart';
import 'package:food_fiesta/product/widget/text/ontap_rich_text.dart';
import 'package:food_fiesta/product/widget/text/title_text.dart';
import 'package:food_fiesta/product/widget/text_field/app_text_field.dart';
import 'package:food_fiesta/product/widget/text_field/email_text_field.dart';
import 'package:food_fiesta/product/widget/text_field/password_text_field.dart';
import 'package:gen/gen.dart';

part 'mixins/sign_up_view_mixin.dart';

@RoutePage()
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with _SignUpViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: LocaleKeys.signIn_createAccount_title,
      ),
      body: SingleChildScrollView(
        child: AppColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderText(
              text: LocaleKeys.signIn_createAccount_title,
            ),
            const AppGap.extraSmall(),
            OnTapRichText(
              title: LocaleKeys.signIn_createAccount_description,
              description: LocaleKeys.signIn_createAccount_subTitle,
              onTap: () => context.maybePop(),
            ),
            const AppGap.small(),
            const AppTextField(
              hintText: LocaleKeys.signIn_createAccount_name,
            ),
            const AppGap.small(),
            EmailTextField(
              formKey: _emailFormKey,
              emailController: _emailController,
            ),
            const AppGap.small(),
            PasswordTextField(
              passwordFormKey: _passwordFormKey,
              passwordController: _passwordController,
            ),
            const AppGap.small(),
            _signUpButton(),
            const AppGap.small(),
            const TitleText(
              text: LocaleKeys.signIn_createAccount_subDescription,
            ),
            const AppGap.extraSmall(),
            const Center(
              child: TitleText(
                text: LocaleKeys.signIn_or,
              ),
            ),
            const AppGap.small(),
            const GoogleButton(),
            const AppGap.extraSmall(),
            const FacebookButton(),
          ],
        ),
      ),
    );
  }

  BlocConsumer<AuthBloc, AuthState> _signUpButton() {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.signUpSuccess) {
          CustomButtomSheet.show(
            context: context,
            child: Assets.lottie.signUpSuccessAnim.lottie(
              repeat: false,
            ),
          );
        }
        if (state.error?.message != null) {
          AuthErrorHandler.handleAuthError(
            state.error?.message,
          );
        }
      },
      builder: (context, state) {
        return AppButton(
          title: LocaleKeys.signIn_createAccount_button_signUp,
          onPressed: _signUp,
          hasLoading: state.isLoading,
        );
      },
    );
  }
}
