import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/work_place/data/repositories/work_place_repository.dart';
import 'package:tetbee__base/models/work_place/remove_user_form_work_place_request.dart';
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

  Future<Either<Failure, bool>> updateWorkPlace(
    WorkPlace workPlace,
    String userId, {
    Map<String, dynamic>? updatedData,
  }) async {
    return execute(
      () => WorkPlaceRepository().updateWorkPlace(
        workPlace,
        userId,
        updatedData: updatedData,
      ),
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

  Future<Either<Failure, bool>> removeUserFormPlace(
    RemoveUserFormWorkPlaceRequest request,
  ) async {
    return execute(
      () => WorkPlaceRepository().removeUserFormPlace(request),
      'Error while removeUserFormPlace',
    );
  }

  //place position
  Future<Either<Failure, List<PositionModel>>> getPlacePositions(
    String workPlcaeId,
  ) async {
    return execute(
      () => WorkPlaceRepository().getPlacePositions(workPlcaeId),
      'Error while getting work getPlacePositions',
    );
  }

  Future<Either<Failure, String>> createPosition(
    String placeId,
    String userId,
    PositionModel positionModel,
  ) async {
    return execute(
      () =>
          WorkPlaceRepository().createPosition(placeId, userId, positionModel),
      'Error while getting work createPosition',
    );
  }

  Future<Either<Failure, List<UserWorkPlaceInfo>>> getUserWorkPlaceInfo(
    String placeId,
  ) async {
    return execute(
      () => WorkPlaceRepository().getUserWorkPlaceInfo(placeId),
      'Error while getting getUserWorkPlaceInfo',
    );
  }

  Future<Either<Failure, bool>> updatePlaceUserWorkPlaceInfo(
    String placeId,
    String userId,
    List<UserWorkPlaceInfo> ordinals,
  ) async {
    return execute(
      () => WorkPlaceRepository().updatePlaceUserWorkPlaceInfo(
        placeId,
        userId,
        ordinals,
      ),
      'Error while updatePlaceUserWorkPlaceInfo',
    );
  }
}
