import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocDocLogoAndName extends StatelessWidget {
  const DocDocLogoAndName({super.key});

  @override

  /// Displays the DocDoc logo and name in a row.
  ///
  /// This widget is used to display the DocDoc logo and name together in a row layout.
  /// The logo is an SVG image asset and the name is displayed as a [Text] widget with
  /// a bold font style and a specific font size.
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo.svg',
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'DocDoc',
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
