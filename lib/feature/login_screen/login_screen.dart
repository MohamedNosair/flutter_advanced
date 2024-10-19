import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_advance/core/widgets/app_text_button.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_cubit.dart';
import 'package:flutter_advance/feature/login_screen/widgets/dont_have_account_text.dart';
import 'package:flutter_advance/feature/login_screen/widgets/email_and_password.dart';
import 'package:flutter_advance/feature/login_screen/widgets/login_bloc_listener.dart';
import 'package:flutter_advance/feature/login_screen/widgets/login_with_social_media.dart';
import 'package:flutter_advance/feature/login_screen/widgets/or_sign_with_text.dart';
import 'package:flutter_advance/feature/login_screen/widgets/term_and_conditions_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'welcome back',
                  style: TextStyles.font24blueBold,
                ),
                heightSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.fontnormal14grey,
                ),
                heightSpace(10),
                Column(
                  children: [
                    const EmailAndPassword(),
                    heightSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'forgot Password ?',
                        style: TextStyles.font13bluenormal,
                      ),
                    ),
                    heightSpace(24),
                    AppTextButton(
                      buttonText: 'login',
                      textStyle: TextStyles.font16wightsemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    heightSpace(40),
                    const OrSignWithText(),
                    heightSpace(30),
                    const LoginWithSocialMedia(),
                    heightSpace(80),
                    const TermsAndConditionsText(),
                    heightSpace(20),
                    const DontHaveAccountText(),
                    
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
