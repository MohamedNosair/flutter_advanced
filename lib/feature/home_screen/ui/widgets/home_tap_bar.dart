import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTapBar extends StatelessWidget {
  const HomeTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, User!', style: TextStyles.font18DarkBlueBold),
            Text(
              'How are you today?',
              style: TextStyles.font12greynormal,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: AppColors.moreLighterGray,
          radius: 24,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
          
        ),
      ],
    );
  }
}
