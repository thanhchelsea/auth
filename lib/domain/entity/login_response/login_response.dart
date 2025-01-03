import 'package:auth/data/model/login_response/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponseEntity with _$LoginResponseEntity {
  factory LoginResponseEntity({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'stepId') int? stepId,
  }) = _LoginResponseEntity;

  static LoginResponseEntity fromLoginRequestModel(LoginResponse model) {
    return LoginResponseEntity(
      stepId: model.stepId,
      token: model.token,
      userId: model.userId,
    );
  }

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) => _$LoginResponseEntityFromJson(json);
}
