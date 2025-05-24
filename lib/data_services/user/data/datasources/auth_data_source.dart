import 'package:tetbee__base/data_services/user/data/auth_api.dart';
import 'package:tetbee__base/tetbee__base.dart';

class AuthDataSource with ApiErrorHandlerMixin {
  Future<String> createUser(UserModel userModel, String id) async {
    return execute(() => AuthApi.createUser(userModel, id));
  }

  Future<UserModel?> getUser(String id) async {
    return execute(() => AuthApi.getUser(id));
  }

  Future<String> createAppInfo(AppInfo appInfo, String userId) async {
    return execute(() => AuthApi.createAppInfo(appInfo, userId));
  }

  Future<AppInfo?> getAppInfo() async {
    return execute(() => AuthApi.getAppInfo());
  }
}
