import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/feature/login_screen/data/repos/login_ropo.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_cubit.dart';
import 'package:flutter_advance/feature/sign_up_screen/data/repos/sign_up_ropo.dart';
import 'package:flutter_advance/feature/sign_up_screen/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> setupGitIt() async {
  Dio dio = DioFactory.getDio();

  sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  //* Login dependency injection
  sl.registerLazySingleton<LoginRepo>(() => LoginRepo(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));


  //* sign up dependency injection
  sl.registerLazySingleton<SignUpRopo>(() => SignUpRopo(sl()));
  sl.registerFactory<SignUpCubit>(() => SignUpCubit(sl()));



}

