import 'package:flutter_advance/core/di/dependency_injection.dart';
import 'package:flutter_advance/core/routing/app_router.dart';
import 'package:flutter_advance/doc_app.dart';

void main() async {
  setupGitIt();
await ScreenUtil.ensureInitialized(); 
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
