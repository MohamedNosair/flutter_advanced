import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSocialMedia extends StatelessWidget {
  final Color color;
  final IconData icon;
  const CustomSocialMedia({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200.r),
        color: AppColors.gary10,
      ),
      child: Icon(
        icon,
        color: color,
        size: 30.sp,
      ),
    );
  }
}
