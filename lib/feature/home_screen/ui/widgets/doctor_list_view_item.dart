import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/spacing_helper.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_advance/feature/home_screen/data/model/specialization_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors? doctorsData;
  const DoctorListViewItem({super.key, required this.doctorsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              'https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg',
              height: 100.h,
              width: 100.w,
              fit: BoxFit.cover,
            ),
          ),
          widthSpace(16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsData?.name ?? 'Doctor Name',
                  style: TextStyles.font18DarkBlueBold,
                ),
                heightSpace(4.h),
                Text(
                  '${doctorsData?.degree ?? 'Degree Not Available'}  |  ${doctorsData?.phone ?? 'Phone Not Available'} ',
                  style: TextStyles.font12greymedium,
                ),
                heightSpace(8.h),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16.sp),
                    widthSpace(4.w),
                    Expanded(
                      child: Text(
                        '${doctorsData?.email ?? 'Email Not Available'} ',
                        style: TextStyles.font12greymedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
