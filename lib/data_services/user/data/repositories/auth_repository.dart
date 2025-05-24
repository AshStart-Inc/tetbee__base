import 'package:tetbee__base/data_services/user/data/datasources/auth_data_source.dart';
import 'package:tetbee__base/models/models.dart';

class AuthRepository {
  Future<String> createUser(UserModel userModel, String id) async {
    return await AuthDataSource().createUser(userModel, id);
  }

  Future<UserModel?> getUser(String id) async {
    return await AuthDataSource().getUser(id);
  }

  Future<String> createAppInfo(AppInfo userModel, String userId) async {
    return await AuthDataSource().createAppInfo(userModel, userId);
  }

  Future<AppInfo?> getAppInfo() async {
    return await AuthDataSource().getAppInfo();
  }
}
