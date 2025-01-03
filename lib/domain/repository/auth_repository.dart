import 'package:auth/data/model/login_request/login_request_model.dart';
import 'package:auth/data/model/login_response/login_response.dart';
import 'package:auth/data/model/user_profile/user_profile.dart';

abstract class AuthRepository {
  Future<LoginResponse?> login({required LoginRequestModel loginRequest});
  Future<UserProfileModel?> getUserProfile({required String accessToken});
}
