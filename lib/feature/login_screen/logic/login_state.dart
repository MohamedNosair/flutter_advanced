
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';
//? dart run build_runner build --delete-conflicting-outputs
@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Succcess<T>;
  const factory LoginState.error({required String message}) = Error;
}
