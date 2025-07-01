
import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/feature/login_screen/data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';
//? dart run build_runner build --delete-conflicting-outputs
@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = loginLoading;
  // const factory LoginState.success(T data) = Success<T>;
 const factory LoginState.loginSuccess(LoginResponse data) = LoginSuccess;
 
  const factory LoginState.loginError(ApiErrorModel apiErrorModel) = LoginError;

  const factory LoginState.isShowPassword() = IsShowPassword;
}
