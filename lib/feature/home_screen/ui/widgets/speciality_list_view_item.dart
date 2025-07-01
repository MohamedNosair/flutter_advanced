import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecializationListViewItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationData;
  final int isSelected;
  const SpecializationListViewItem({
    super.key,
    required this.itemIndex,
    required this.specializationData,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          itemIndex == isSelected
              ? CircleAvatar(
                  radius: 30.r,
                  backgroundColor: AppColors.mainColor,
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: AppColors.lightBlue,
                    child: CircleAvatar(
                      radius: 26.r,
                      backgroundColor: AppColors.lightBlue,
                      child: SvgPicture.asset(
                        'assets/svgs/docdoc_logo.svg',
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28.r,
                  backgroundColor: AppColors.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/docdoc_logo.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          heightSpace(8.h),
          Text(
            specializationData?.name ?? 'Specialization',
            style: itemIndex == isSelected
                ? TextStyles.font12DarkBlueBold
                : TextStyles.font12DarkBluenormal,
          ),
        ],
      ),
    );
  }
}
