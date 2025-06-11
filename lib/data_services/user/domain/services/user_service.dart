import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/user/data/repositories/user_repository.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';
import 'package:tetbee__base/tetbee__base.dart';

UserService userService = UserService();

class UserService with ApiServiceMixin {
  Future<Either<Failure, List<UserModel>>> getSelectedUsers(
    List<String> userIds,
  ) async {
    return execute(
      () => userRepository.getSelectedUsers(userIds),
      'Error while getSelectedUsers ',
    );
  }

  Future<Either<Failure, List<UserModel>>> getWorkPlaceUsers(
    String placeId,
  ) async {
    return execute(
      () => userRepository.getWorkPlaceUsers(placeId),
      'Error while getWorkPlaceUsers ',
    );
  }

  Future<Either<Failure, bool>> createTempUser(
    UserModel userModel,
    WorkPlace workPlace,
    TempUserAvailabilities tempUserAv,
    List<String> positionIds,
    String userId,
  ) async {
    return execute(
      () => userRepository.createTempUser(
        userModel,
        workPlace,
        tempUserAv,
        positionIds,
        userId,
      ),
      'Error while createTempUser ',
    );
  }
}
