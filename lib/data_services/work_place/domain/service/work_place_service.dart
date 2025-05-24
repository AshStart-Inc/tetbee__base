import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/work_place/data/repositories/work_place_repository.dart';
import 'package:tetbee__base/models/work_place/update_work_place_user_info.dart';
import 'package:tetbee__base/tetbee__base.dart';

WorkPlaceService workPlaceService = WorkPlaceService();

class WorkPlaceService with ApiServiceMixin {
  Future<Either<Failure, String>> createWorkPlace(
    WorkPlace workPlace,
    String userId,
  ) async {
    return execute(
      () => WorkPlaceRepository().createWorkPlace(workPlace, userId),
      'Error while create work place',
    );
  }

  Future<Either<Failure, WorkPlace?>> getWorkPlace(String id) async {
    return execute(
      () => WorkPlaceRepository().getWorkPlace(id),
      'Error while getting work place',
    );
  }

  Future<Either<Failure, bool>> updateWorkPlaceUserInfo(
    UpdateWorkPlaceUserInfo updateWorkPlaceUserInfo,
  ) async {
    return execute(
      () => WorkPlaceRepository().updateWorkPlaceUserInfo(
        updateWorkPlaceUserInfo,
      ),
      'Error while updateWorkPlaceUserInfo',
    );
  }
}
