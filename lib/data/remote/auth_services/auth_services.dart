import 'dart:convert';

import 'package:auth/data/model/login_response/login_response.dart';
import 'package:auth/data/model/user_profile/user_profile.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:retrofit/retrofit.dart';

import '../../model/login_request/login_request_model.dart';

// part 'auth_services.g.dart';

class AuthService {
  AuthService();
  static var client = http.Client();

  Future<LoginResponse?> login(
    LoginRequestModel body,
  ) async {
    try {
      var data = {
        'userName': body.username,
        'password': body.password,
        // 'rememberMe': rememberMe,
      };
      final response = await client.post(
        Uri.parse('https://identity.moon.vn/api/user/login'),
        headers: <String, String>{
          'Access-Control-Allow-Origin': '*',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data),
      );
      print(json.decode(response.body));
      if (response.statusCode == 200) {
        final data = LoginResponse.fromJson(
          json.decode(response.body) as Map<String, dynamic>,
        );
        return data;
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  Future<UserProfileModel?> fetchUserProfile({
    required String accessToken,
  }) async {
    try {
      final response = await client.post(
        Uri.parse('https://identity.moon.vn/api/user/profile'),
        headers: {
          'Accept': 'application/json',
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Headers': 'Access-Control-Allow-Origin, Accept',
          'Authorization': 'Bearer $accessToken',
        },
      );
      if (response.statusCode == 200) {
        final user = UserProfileModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        return user;
      }
    } on Exception catch (e) {
      rethrow;
    }
  }
}
