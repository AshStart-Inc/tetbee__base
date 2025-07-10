import 'package:tetbee__base/data_services/work_place/data/work_place_api.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/work_place/remove_user_form_work_place_request.dart';
import 'package:tetbee__base/models/work_place/update_work_place_user_info.dart';

class WorkPlaceDataSource with ApiErrorHandlerMixin {
  Future<String> createWorkPlace(WorkPlace workPlace, String userId) async {
    return execute(() => workPlaceApi.createWorkPlace(workPlace, userId));
  }

  Future<WorkPlace?> getWorkPlace(String id) async {
    return execute(() => workPlaceApi.getWorkPlace(id));
  }

  Future<bool> updateWorkPlace(
    WorkPlace workPlace,
    String userId, {
    Map<String, dynamic>? updatedData,
  }) async {
    return execute(
      () => workPlaceApi.updateWorkPlace(
        workPlace,
        userId,
        updatedData: updatedData,
      ),
    );
  }

  Future<bool> updateWorkPlaceUserInfo(
    UpdateWorkPlaceUserInfo updateWorkPlaceUserInfo,
  ) async {
    return execute(
      () => workPlaceApi.updateWorkPlaceUserInfo(updateWorkPlaceUserInfo),
    );
  }

  Future<bool> removeUserFormPlace(
    RemoveUserFormWorkPlaceRequest request,
  ) async {
    return execute(() => workPlaceApi.removeUserFormPlace(request));
  }

  // place posiiton

  Future<List<PositionModel>> getPlacePositions(String placeId) async {
    return execute(() => workPlaceApi.getPlacePositions(placeId));
  }

  Future<String> createPosition(
    String placeId,
    String userId,
    PositionModel positionModel,
  ) async {
    return execute(
      () => workPlaceApi.createPosition(placeId, userId, positionModel),
    );
  }

  Future<List<UserWorkPlaceInfo>> getUserWorkPlaceInfo(String placeId) async {
    return execute(() => workPlaceApi.getUserWorkPlaceInfo(placeId));
  }

  Future<bool> updatePlaceUserWorkPlaceInfo(
    String placeId,
    String userId,
    List<UserWorkPlaceInfo> ordinals,
  ) async {
    return execute(
      () =>
          workPlaceApi.updatePlaceUserWorkPlaceInfo(placeId, userId, ordinals),
    );
  }
}
