import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/feature/login_screen/data/repos/login_ropo.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> setupGitIt() async {
  Dio dio = DioFactory.getDio();

  sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  //* Login dependency injection
  sl.registerLazySingleton<LoginRepo>(() => LoginRepo(sl()));
  sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl()));



}

