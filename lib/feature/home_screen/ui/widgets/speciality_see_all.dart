import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/styles.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Doctor Speciality',
          style: TextStyles.font18DarkBluesemiBold,
        ),
        Text(
          'See All',
          style: TextStyles.font12bluenormal,
        ),
      ],
    );
  }
}
