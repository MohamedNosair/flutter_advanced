import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/feature/login_screen/ui/widgets/term_and_conditions_text.dart';
import 'package:flutter_advance/feature/sign_up_screen/logic/sign_up_cubit.dart';
import 'package:flutter_advance/feature/sign_up_screen/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advance/feature/sign_up_screen/ui/widgets/sign_up_bloc_lisenter.dart';
import 'package:flutter_advance/feature/sign_up_screen/ui/widgets/sign_up_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24blueBold,
                ),
                heightSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font13greynormal,
                ),
                heightSpace(20),
                Column(
                  children: [
                    const SignupForm(),
                    heightSpace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16wightsemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    heightSpace(16),
                    const TermsAndConditionsText(),
                    heightSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().register();
    }
  }
}
