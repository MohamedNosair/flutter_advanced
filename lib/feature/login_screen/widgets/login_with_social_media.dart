import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/feature/login_screen/widgets/custom_social_media.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithSocialMedia extends StatelessWidget {
  const LoginWithSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomSocialMedia(
          color: Colors.red,
          icon: Icons.g_mobiledata_outlined,
        ),
        widthSpace(30),
        const CustomSocialMedia(
          color: Colors.blue,
          icon: Icons.facebook,
        ),
        widthSpace(30),
        const CustomSocialMedia(
          color: Colors.black,
          icon: Icons.apple,
        ),
      ],
    );
  }
}