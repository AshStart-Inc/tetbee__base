import 'package:tetbee__base/data_services/work_place/data/data_source/work_place_data_source.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/work_place/remove_user_form_work_place_request.dart';
import 'package:tetbee__base/models/work_place/update_work_place_user_info.dart';
import 'package:tetbee__base/models/work_place/user_work_place_ordinal.dart';

class WorkPlaceRepository {
  Future<String> createWorkPlace(WorkPlace workPlace, String userId) async {
    return await WorkPlaceDataSource().createWorkPlace(workPlace, userId);
  }

  Future<WorkPlace?> getWorkPlace(String id) async {
    return await WorkPlaceDataSource().getWorkPlace(id);
  }

  Future<bool> updateWorkPlace(
    WorkPlace workPlace,
    String userId, {
    Map<String, dynamic>? updatedData,
  }) async {
    return await WorkPlaceDataSource().updateWorkPlace(
      workPlace,
      userId,
      updatedData: updatedData,
    );
  }

  Future<bool> updateWorkPlaceUserInfo(
    UpdateWorkPlaceUserInfo updateWorkPlaceUserInfo,
  ) async {
    return await WorkPlaceDataSource().updateWorkPlaceUserInfo(
      updateWorkPlaceUserInfo,
    );
  }

  Future<bool> removeUserFormPlace(
    RemoveUserFormWorkPlaceRequest request,
  ) async {
    return await WorkPlaceDataSource().removeUserFormPlace(request);
  }

  //place position
  Future<List<PositionModel>> getPlacePositions(String id) async {
    return await WorkPlaceDataSource().getPlacePositions(id);
  }

  Future<String> createPosition(
    String placeId,
    String userId,
    PositionModel positionModel,
  ) async {
    return await WorkPlaceDataSource().createPosition(
      placeId,
      userId,
      positionModel,
    );
  }

  Future<List<UserWorkPlaceOrdinal>> getUserWorkPlaceOrdinal(
    String placeId,
  ) async {
    return await WorkPlaceDataSource().getUserWorkPlaceOrdinal(placeId);
  }

  Future<bool> updatePlaceUserOrdinals(
    String placeId,
    String userId,
    List<UserWorkPlaceOrdinal> ordinals,
  ) async {
    return await WorkPlaceDataSource().updatePlaceUserOrdinals(
      placeId,
      userId,
      ordinals,
    );
  }
}
