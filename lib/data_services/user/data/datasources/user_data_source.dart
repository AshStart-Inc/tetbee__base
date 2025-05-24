import 'package:tetbee__base/data_services/user/data/user_api.dart';
import 'package:tetbee__base/tetbee__base.dart';

UserDataSource userDataSource = UserDataSource();

class UserDataSource with ApiErrorHandlerMixin {
  Future<List<UserModel>> getSelectedUsers(List<String> userIds) async {
    return execute(() => UserApi.getSelectedUsers(userIds));
  }

  Future<List<UserModel>> getWorkPlaceUsers(String placeId) async {
    return execute(() => UserApi.getWorkPlaceUsers(placeId));
  }
}
