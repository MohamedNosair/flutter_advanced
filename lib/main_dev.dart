import 'package:flutter/material.dart';
import 'package:flutter_advance/core/di/dependency_injection.dart';
import 'package:flutter_advance/core/routing/app_router.dart';
import 'package:flutter_advance/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//! to build flutter apk run (flutter build apk --flavor dev -target lib/main_dev.dart )
// mohamedn@gmail.com
//  password: 123456789

// Platform  Firebase App Id
// android   1:317738651488:android:6531d294ba5ebf058d9805
// ios       1:317738651488:ios:1dd8de641e4757ab8d9805
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGitIt();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 
  //  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
