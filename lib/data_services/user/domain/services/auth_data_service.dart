import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/user/data/repositories/auth_repository.dart';
import 'package:tetbee__base/tetbee__base.dart';

AuthDataService authDataService = AuthDataService();

class AuthDataService with ApiServiceMixin {
  Future<Either<Failure, String>> createUser(
    UserModel userModel,
    String id,
  ) async {
    return execute(
      () => AuthRepository().createUser(userModel, id),
      'Error while create user model',
    );
  }

  Future<Either<Failure, UserModel?>> getUser(String id) async {
    return execute(
      () => AuthRepository().getUser(id),
      'Error while create user model',
    );
  }

  Future<Either<Failure, String>> createAppInfo(
    AppInfo appInfo,
    String userId,
  ) async {
    return execute(
      () => AuthRepository().createAppInfo(appInfo, userId),
      'Error while creating App Info',
    );
  }

  Future<Either<Failure, AppInfo?>> getAppInfo() async {
    return execute(
      () => AuthRepository().getAppInfo(),
      'Error while getting app Info',
    );
  }
}
