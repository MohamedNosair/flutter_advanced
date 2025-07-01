import 'package:flutter/material.dart';
import 'package:flutter_advance/feature/sign_up_screen/data/model/sign_up_request_body.dart';
import 'package:flutter_advance/feature/sign_up_screen/data/repos/sign_up_ropo.dart';
import 'package:flutter_advance/feature/sign_up_screen/logic/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRopo _signUpRopo;
  SignUpCubit(this._signUpRopo) : super(const SignUpState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> register() async {
    emit(const SignUpState.loading());
    final resposne = await _signUpRopo.register(
    SignUpRequestBody(
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 1,
        name: nameController.text,
        phone:phoneController.text,
      ),
    );
    resposne.when(
      success: (loginResponse) {
        emit(SignUpState.success(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(SignUpState.error(apiErrorModel));
      },
    );
  }
}
