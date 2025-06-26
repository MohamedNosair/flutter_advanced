import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsetsDirectional.only(
                start: index == 0 ? 0 : 24.w,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28.r,
                    backgroundColor: AppColors.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/lamge.svg',
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),
                  heightSpace(8.h),
                  Text(
                    'Speciality $index',
                    style: TextStyles.font12DarkBluenormal,
                  ),
                ],
              ));
        },
      ),
    );
  }
}
