import 'package:tetbee__base/database_service/api_handling_mixin.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';
import 'package:tetbee__base/models/work_place/update_work_place_user_info.dart';

WorkPlaceApi workPlaceApi = WorkPlaceApi();

class WorkPlaceApi with ApiHandlingMixin {
  Future<ApiResponse<String>> createWorkPlace(
    WorkPlace workPlace,
    String userId,
  ) async {
    return await executeFirebaseFunction<String>(
      'workPlace-createWorkPlace',
      workPlace.toJson(),
    );
  }

  Future<ApiResponse<WorkPlace?>> getWorkPlace(String placeId) async {
    return await DatabaseService.read<WorkPlace>(
      types: getDataTypes(DataModel.workPlace),
      docId: placeId,
    );
  }

  Future<ApiResponse<String>> createJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return await DatabaseService.write(
      dataModel: DataModel.joinRequest,
      types: getDataTypes(DataModel.joinRequest, docId: joinRequest.placeId),
      data: joinRequest.toJson(),
      userId: userId,
    );
  }

  Future<ApiResponse<bool>> updateJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return DatabaseService.update(
      dataModel: DataModel.joinRequest,
      types: getDataTypes(DataModel.workPlace, docId: joinRequest.placeId),
      data: joinRequest.toJson(),
      docId: joinRequest.id!,
      userId: userId,
    );
  }

  Future<ApiResponse<bool>> acceptJoinRequest(JoinRequest joinRequest) async {
    return await executeFirebaseFunction<bool>(
      'workPlace-acceptJoinRequest',
      joinRequest.toJson(),
    );
  }

  Future<ApiResponse<bool>> updateWorkPlaceUserInfo(
    UpdateWorkPlaceUserInfo updateWorkPlaceUserInfo,
  ) async {
    return await executeFirebaseFunction<bool>(
      'workPlace-updateWorkPlaceUserInfo',
      updateWorkPlaceUserInfo.toJson(),
    );
  }
}
