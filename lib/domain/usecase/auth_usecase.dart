import 'package:auth/data/model/login_request/login_request_model.dart';
import 'package:auth/data/model/login_response/login_response.dart';
import 'package:auth/data/model/user_profile/user_profile.dart';
import 'package:auth/domain/entity/login_response/login_response.dart';
import 'package:auth/domain/entity/user_profile/user_profile_entity.dart';
import 'package:auth/domain/repository/auth_repository.dart';

class AuthUsecase {
  AuthUsecase(AuthRepository authRepository) : this._authRepository = authRepository;
  final AuthRepository _authRepository;

  Future<LoginResponseEntity?> login(LoginRequestModel loginRequest) async {
    LoginResponse? response = await _authRepository.login(loginRequest: loginRequest);
    if (response != null) {
      var data = LoginResponseEntity.fromLoginRequestModel(response);
      return data;
    }
  }

  Future<UserProfileEntity?> fetchUserProfile({
    required String accessToken,
  }) async {
    UserProfileModel? response = await _authRepository.getUserProfile(accessToken: accessToken);
    if (response != null) {
      var data = UserProfileEntity.fromJson(response.toJson());
      return data;
    }
  }
}
