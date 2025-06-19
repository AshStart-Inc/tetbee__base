import 'package:tetbee__base/data_services/user/data/datasources/user_data_source.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';

UserRepository userRepository = UserRepository();

class UserRepository {
  Future<List<UserModel>> getSelectedUsers(List<String> userIds) async {
    return await userDataSource.getSelectedUsers(userIds);
  }

  Future<List<UserModel>> getWorkPlaceUsers(
    String placeId,
    bool withTempUser,
    bool onlyTempUser,
  ) async {
    return userDataSource.getWorkPlaceUsers(
      placeId,
      withTempUser,
      onlyTempUser,
    );
  }

  Future<bool> createTempUser(
    UserModel userModel,
    WorkPlace workPlace,
    TempUserAvailabilities tempUserAv,
    List<String> positionIds,
    String userId,
  ) async {
    return userDataSource.createTempUser(
      userModel,
      workPlace,
      tempUserAv,
      positionIds,
      userId,
    );
  }
}
