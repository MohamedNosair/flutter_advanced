import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13wightnormaldarkBlue,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13wightsemiBoldBlue,
          ),
        ],
      ),
    );
  }
}