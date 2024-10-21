import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  final bool lowerCase;
  final bool upperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLenght;

  const PasswordValidation(
      {super.key,
      required this.lowerCase,
      required this.upperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLenght});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', lowerCase),
        heightSpace(5),
        buildValidationRow('At least 1 uppercase letter', upperCase),
        heightSpace(5),
        buildValidationRow('At least 8 special character', hasSpecialCharacters),
        heightSpace(5),
        buildValidationRow('At least 1 has number', hasNumber),
        heightSpace(5),
        buildValidationRow('At least 8 character long', hasMinLenght),
       
      ],
    );
  }

  Widget buildValidationRow( text,hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: AppColors.fontGreyColor,
        ),
        widthSpace(3),
        Text(
          text,
          style: TextStyles.font13wightnormaldarkBlue.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? AppColors.gary60 : AppColors.darkBlue,
          ),
        )
      ],
    );
  }
}
