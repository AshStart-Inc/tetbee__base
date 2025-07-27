import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/database_service/api_handling_mixin.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';
import 'package:tetbee__base/models/work_place/remove_user_form_work_place_request.dart';
import 'package:tetbee__base/models/work_place/remove_work_place_request.dart';
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

  Future<ApiResponse<bool>> removeWorkplace(
    RemoveWorkPlaceRequest request,
  ) async {
    return await executeFirebaseFunction<bool>(
      'workPlace-removeWorkplace',
      request.toJson(),
    );
  }

  Future<ApiResponse<bool>> updateWorkPlace(
    WorkPlace workPlace,
    String userId, {
    Map<String, dynamic>? updatedData,
  }) async {
    return await DatabaseService.update(
      userId: userId,
      dataModel: DataModel.workPlace,
      types: getDataTypes(DataModel.workPlace),
      baseData: workPlace.toJson(),
      updatedData: updatedData,
      docId: workPlace.id!,
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
      types: getDataTypes(DataModel.joinRequest),
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
      types: getDataTypes(DataModel.joinRequest),
      baseData: joinRequest.toJson(),
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

  Future<ApiResponse<bool>> rejectJoinRequest(JoinRequest joinRequest) async {
    return await executeFirebaseFunction<bool>(
      'workPlace-rejectJoinRequest',
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

  Future<ApiResponse<bool>> removeUserFormPlace(
    RemoveUserFormWorkPlaceRequest request,
  ) async {
    return await executeFirebaseFunction<bool>(
      'workPlace-removeUserFormPlace',
      request.toJson(),
    );
  }

  //positions

  Future<ApiResponse<List<PositionModel>>> getPlacePositions(String placeId) {
    return DatabaseService.getAllDocuments<PositionModel>(
      types: getDataTypes(DataModel.placePosition, docId: placeId),
      queryBuilder:
          (path) =>
              FirebaseFirestore.instance
                  .collection(path)
                  .where('deleted', isEqualTo: false)
                  .orderBy('ordinal', descending: false)
                  .get(),
    );
  }

  Future<ApiResponse<String>> createPosition(
    String placeId,
    String userId,
    PositionModel positionModel,
  ) {
    return DatabaseService.write(
      dataModel: DataModel.placePosition,
      types: getDataTypes(DataModel.placePosition, docId: placeId),
      data: positionModel.toJson(),
      userId: userId,
      docId: positionModel.id,
    );
  }

  Future<ApiResponse<bool>> updatePosition(
    String placeId,
    String userId,
    PositionModel positionModel, {
    Map<String, dynamic>? updatedData,
  }) {
    return DatabaseService.update(
      dataModel: DataModel.placePosition,
      types: getDataTypes(DataModel.placePosition, docId: placeId),
      baseData: positionModel.toJson(),
      userId: userId,
      updatedData: updatedData,
      docId: positionModel.id!,
    );
  }

  //get user work place info
  Future<ApiResponse<List<UserWorkPlaceInfo>>> getUserWorkPlaceInfo(
    String placeId,
  ) async {
    return DatabaseService.getAllDocuments<UserWorkPlaceInfo>(
      types: getDataTypes(DataModel.userWorkPlaceInfo, docId: placeId),
      queryBuilder: (path) => FirebaseFirestore.instance.collection(path).get(),
    );
  }

  Future<ApiResponse<bool>> updatePlaceUserWorkPlaceInfo(
    String placeId,
    String userId,
    List<UserWorkPlaceInfo> ordinals,
  ) async {
    List<TransactionDataModel> update = [];
    for (UserWorkPlaceInfo ordinal in ordinals) {
      update.add(
        TransactionDataModel.getDocumentTransactionDataForUpdate(
          types: getDataTypes(DataModel.userWorkPlaceInfo, docId: placeId),
          dataModelEnum: DataModel.userWorkPlaceInfo,
          dataModel: ordinal.toJson(),
          userId: userId,
          docId: ordinal.id,
        ),
      );
    }
    return await TransactionDataModel.run(update);
  }
}
