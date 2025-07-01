import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/constants.dart';
import 'package:flutter_advance/core/helpers/shared_pref_helper.dart';
import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login_screen/data/repos/login_ropo.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  // var isShowPassword = true;
  // changePasswordVisibility() {
  //   isShowPassword = !isShowPassword;
  //   emit(const LoginState.isShowPassword());
  // }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(const LoginState.loginLoading());
    final resposne = await _loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    resposne.when(
      success: (loginResponse) async {
        await userSaveToken(loginResponse.userData?.token ?? '');
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginError(apiErrorModel));
      },
    );
  }

  Future<void> userSaveToken(String token) async {
    await SharedPrefHelper.setSecureStorage(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
