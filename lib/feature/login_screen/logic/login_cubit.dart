import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login_screen/data/repos/login_ropo.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  var isShowPassword = true;
  changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    emit(const LoginState.isShowPassword());
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final resposne = await _loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    resposne.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (failure) {
        emit(LoginState.error(message: failure.apiErrorModel.message ?? ''));
      },
    );
  }
}
