import 'package:tetbee__base/data_services/user/data/user_api.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';
import 'package:tetbee__base/tetbee__base.dart';

UserDataSource userDataSource = UserDataSource();

class UserDataSource with ApiErrorHandlerMixin {
  Future<List<UserModel>> getSelectedUsers(List<String> userIds) async {
    return execute(() => UserApi.getSelectedUsers(userIds));
  }

  Future<List<UserModel>> getWorkPlaceUsers(
    String placeId,
    bool withTempUser,
    bool onlyTempUser,
  ) async {
    return execute(
      () => UserApi.getWorkPlaceUsers(placeId, withTempUser, onlyTempUser),
    );
  }

  Future<bool> updateUserInfo(
    UserModel userModel,
    Map<String, dynamic> updatedData,
  ) async {
    return execute(() => UserApi.updateUserInfo(userModel, updatedData));
  }

  Future<bool> createTempUser(
    UserModel userModel,
    WorkPlace workPlace,
    TempUserAvailabilities tempUserAv,
    List<String> positionIds,
    String userId,
  ) async {
    return execute(
      () => UserApi.createTempUser(
        userModel,
        workPlace,
        tempUserAv,
        positionIds,
        userId,
      ),
    );
  }
}
