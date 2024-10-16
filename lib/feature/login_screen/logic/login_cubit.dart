

import 'package:flutter_advance/feature/login_screen/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login_screen/data/repos/login_ropo.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  Future<void> login(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final resposne = await _loginRepo.login(loginRequestBody);
    resposne.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (failure) {
        emit(LoginState.error(message: failure.apiErrorModel.message ?? ''));
      },
    );
  }

}
