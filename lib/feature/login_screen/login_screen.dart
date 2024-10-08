import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_advance/core/widgets/app_text_button.dart';
import 'package:flutter_advance/core/widgets/app_text_form_field.dart';
import 'package:flutter_advance/feature/login_screen/widgets/dont_have_account_text.dart';
import 'package:flutter_advance/feature/login_screen/widgets/term_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey formKey = GlobalKey<FormState>();
  bool obscureText = true;
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'Email',
                      ),
                      heightSpace(10),
                      AppTextFormField(
                        hintText: 'password',
                        obscureText: obscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppColors.gary60,
                          ),
                        ),
                      ),
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
                        onPressed: () {},
                      ),
                      heightSpace(40),
                      const TermsAndConditionsText(),
                      heightSpace(20),
                      const DontHaveAccountText()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
