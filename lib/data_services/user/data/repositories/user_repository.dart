import 'package:tetbee__base/data_services/user/data/datasources/user_data_source.dart';
import 'package:tetbee__base/models/models.dart';

UserRepository userRepository = UserRepository();

class UserRepository {
  Future<List<UserModel>> getSelectedUsers(List<String> userIds) async {
    return await userDataSource.getSelectedUsers(userIds);
  }

  Future<List<UserModel>> getWorkPlaceUsers(String placeId) async {
    return userDataSource.getWorkPlaceUsers(placeId);
  }
}
