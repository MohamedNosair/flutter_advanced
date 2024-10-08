import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_advance/feature/onboarding_screen/widgets/docdoc_logo_name.dart';
import 'package:flutter_advance/feature/onboarding_screen/widgets/doctor_image_and_text.dart';
import 'package:flutter_advance/feature/onboarding_screen/widgets/get_start_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                const DocDocLogoAndName(),
                 heightSpace(10),
                const DoctorImageAndText(),
                heightSpace(10),
                Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13greynormal,
                    ),
                  ],
                ),
                 heightSpace(30),
                const GetStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
