import 'package:tetbee__base/data_services/work_place/data/data_source/work_place_data_source.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/work_place/remove_user_form_work_place_request.dart';
import 'package:tetbee__base/models/work_place/remove_work_place_request.dart';
import 'package:tetbee__base/models/work_place/update_work_place_user_info.dart';

class WorkPlaceRepository {
  Future<String> createWorkPlace(WorkPlace workPlace, String userId) async {
    return await WorkPlaceDataSource().createWorkPlace(workPlace, userId);
  }

  Future<bool> removeWorkplace(RemoveWorkPlaceRequest request) async {
    return await WorkPlaceDataSource().removeWorkplace(request);
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

  Future<bool> updatePosition(
    String placeId,
    String userId,
    PositionModel positionModel,
    Map<String, dynamic>? updatedData,
  ) async {
    return await WorkPlaceDataSource().updatePosition(
      placeId,
      userId,
      positionModel,
      updatedData: updatedData,
    );
  }

  Future<List<UserWorkPlaceInfo>> getUserWorkPlaceInfo(String placeId) async {
    return await WorkPlaceDataSource().getUserWorkPlaceInfo(placeId);
  }

  Future<bool> updatePlaceUserWorkPlaceInfo(
    String placeId,
    String userId,
    List<UserWorkPlaceInfo> ordinals,
  ) async {
    return await WorkPlaceDataSource().updatePlaceUserWorkPlaceInfo(
      placeId,
      userId,
      ordinals,
    );
  }
}
