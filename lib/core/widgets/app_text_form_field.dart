import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contantPadding;
  final InputBorder? enabeleBorder;
  final InputBorder? focusedBorder;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Color? backgroundColor;

  const AppTextFormField(
      {super.key,
      this.contantPadding,
      this.enabeleBorder,
      this.focusedBorder,
      required this.hintText,
      this.hintStyle,
      this.inputTextStyle,
      this.suffixIcon,
      this.obscureText,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      style: TextStyles.fontmedium14darkBlue,
      cursorColor: AppColors.darkBlue,
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? AppColors.moreLightGary,
        contentPadding: contantPadding ??
            EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 15.h,
            ),
        suffixIcon: suffixIcon,
        isDense: true,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.fontnormal14lightgrey,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.3.w,
                color: AppColors.mainColor,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
        enabledBorder: enabeleBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.3.w,
                color: AppColors.fontLighterGreyColor,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
      ),
    );
  }
}
