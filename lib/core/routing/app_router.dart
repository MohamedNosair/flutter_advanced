import 'package:flutter/material.dart';
import 'package:flutter_advance/core/di/dependency_injection.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/feature/home_screen/home_screen.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_cubit.dart';
import 'package:flutter_advance/feature/login_screen/login_screen.dart';
import 'package:flutter_advance/feature/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
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

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined${settings.name}'),
            ),
          ),
        );
    }
  }
}
