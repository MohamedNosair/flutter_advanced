import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrSignWithText extends StatelessWidget {
  const OrSignWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.gary20,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            'Or sign in with',
            style: TextStyles.font13greynormal,
          ),
        ),
        const Expanded(
          child: Divider(
            color: AppColors.gary20,
          ),
        ),
      ],
    );
  }
}
