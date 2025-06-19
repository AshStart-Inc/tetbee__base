import 'package:tetbee__base/models/common/notification_center.dart';
import 'package:tetbee__base/tetbee__base.dart';

class AuthApi {
  static Future<ApiResponse<String>> createUser(
    UserModel userModel,
    String id,
  ) async {
    await DatabaseService.write(
      dataModel: DataModel.notificationCenter,
      userId: id,
      data: NotificationCenter().toJson(),
      docId: id,
    );
    return DatabaseService.write(
      docId: id,
      dataModel: DataModel.userModel,
      userId: id,
      data: userModel.copyWith(id: id).toJson(),
    );
  }

  static Future<ApiResponse<UserModel?>> getUser(String id) async {
    return await DatabaseService.read<UserModel>(
      types: getDataTypes(DataModel.userModel),
      docId: id,
    );
  }

  static Future<ApiResponse<String>> createAppInfo(
    AppInfo appInfo,
    String userId,
  ) async {
    return DatabaseService.write(
      docId: 'AppInfo',
      dataModel: DataModel.appInfo,
      userId: userId,
      data: appInfo.toJson(),
    );
  }

  static Future<ApiResponse<AppInfo?>> getAppInfo() async {
    return await DatabaseService.read<AppInfo>(
      types: getDataTypes(DataModel.appInfo),
      docId: 'AppInfo',
    );
  }
}
