import 'package:flutter/material.dart';
import 'package:flutter_advance/core/di/dependency_injection.dart';
import 'package:flutter_advance/core/routing/app_router.dart';
import 'package:flutter_advance/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//! to build flutter apk run (flutter build apk --flavor prod -target lib/main_prod.dart )
void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGitIt();
   WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
