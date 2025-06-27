import 'package:flutter/material.dart';
import 'package:flutter_advance/core/di/dependency_injection.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/feature/home_screen/logic/home_cubit.dart';
import 'package:flutter_advance/feature/home_screen/ui/home_screen.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_cubit.dart';
import 'package:flutter_advance/feature/login_screen/ui/login_screen.dart';
import 'package:flutter_advance/feature/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_advance/feature/sign_up_screen/logic/sign_up_cubit.dart';
import 'package:flutter_advance/feature/sign_up_screen/ui/sign_up.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LoginCubit>(
            create: (context) => sl<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<SignUpCubit>(
            create: (context) => sl<SignUpCubit>(),
            child: const SignupScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(sl())..getSpecializations(),
                  child:const HomeScreen(),
                ));

      default:
        return null;
    }
  }
}
