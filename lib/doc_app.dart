import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routing/app_router.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'First Method',
        theme: ThemeData(
            primaryColor: AppColors.mainColor,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
