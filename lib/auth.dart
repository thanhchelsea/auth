library auth;

import 'package:auth/data/remote/auth_services/auth_services.dart';
import 'package:auth/data/repository/auth_repository.dart';
import 'package:auth/domain/repository/auth_repository.dart';
import 'package:auth/domain/usecase/auth_usecase.dart';
import 'package:get_it/get_it.dart';

export 'data/model/login_request/login_request_model.dart';
export 'data/model/login_response/login_response.dart';
export 'data/remote/auth_services/auth_services.dart';
export 'domain/usecase/auth_usecase.dart';
export 'domain/entity/user_profile/user_profile_entity.dart';

final getIt = GetIt.instance;

class Auth {
  void init() {
    initService();
    initRepo();
    initUsecase();
  }

  static void initService() {
    getIt.registerFactory<AuthService>(
      () => AuthService(),
    );
  }

  static void initRepo() {
    getIt.registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        getIt(),
      ),
    );
  }

  static void initUsecase() {
    getIt.registerFactory<AuthUsecase>(
      () => AuthUsecase(
        getIt(),
      ),
    );
  }
}
