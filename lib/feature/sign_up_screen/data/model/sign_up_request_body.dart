import 'package:json_annotation/json_annotation.dart';
//? dart run build_runner build --delete-conflicting-outputs
part 'sign_up_request_body.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String phone;
  final int gender;
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  SignUpRequestBody({
    required this.email,
    required this.gender,
    required this.name,
    required this.passwordConfirmation,
    required this.phone,
    required this.password,
  });
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
