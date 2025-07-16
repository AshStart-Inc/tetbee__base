import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';

class UserApi {
  static Future<ApiResponse<List<UserModel>>> getSelectedUsers(
    List<String> userId,
  ) async {
    return DatabaseService.readDocuments<UserModel>(
      types: getDataTypes(DataModel.userModel),
      ids: userId,
    );
  }

  static Future<ApiResponse<List<UserModel>>> getWorkPlaceUsers(
    String placeId,
    bool withTempUser,
    bool onlyTempUser,
  ) async {
    return DatabaseService.getAllDocuments<UserModel>(
      types: getDataTypes(DataModel.userModel),
      queryBuilder:
          (path) =>
              onlyTempUser
                  ? FirebaseFirestore.instance
                      .collection(path)
                      .where(DatabaseService.filtersKey, arrayContains: placeId)
                      .where('isTempUser', isEqualTo: true)
                      .get()
                  : withTempUser
                  ? FirebaseFirestore.instance
                      .collection(path)
                      .where(DatabaseService.filtersKey, arrayContains: placeId)
                      .get()
                  : FirebaseFirestore.instance
                      .collection(path)
                      .where(DatabaseService.filtersKey, arrayContains: placeId)
                      .where('isTempUser', isEqualTo: false)
                      .get(),
    );
  }

  static Future<ApiResponse<bool>> updateUserInfo(
    UserModel userModel,
    Map<String, dynamic> updatedData,
  ) {
    return DatabaseService.update(
      baseData: userModel.toJson(),
      updatedData: updatedData,
      dataModel: DataModel.userModel,
      types: getDataTypes(DataModel.userModel),
      docId: userModel.id!,
      userId: userModel.id!,
    );
  }

  static Future<ApiResponse<bool>> createTempUser(
    UserModel userModel,
    WorkPlace workPlace,
    TempUserAvailabilities tempUserAv,
    List<String> positionIds,
    String userId,
  ) async {
    UserModel updatedUser = userModel;
    UserWorkPlaceRelation relation = UserWorkPlaceRelation(
      isActive: true,
      isSelected: true,
      workPlaceId: workPlace.id!,
      joinedAt: DateTime.now(),
    );
    //create user
    TransactionDataModel createTempUser =
        TransactionDataModel.getDocumentTransactionDataForWrite(
          types: getDataTypes(DataModel.userModel),
          dataModelEnum: DataModel.userModel,
          userId: userId,
          filters: [workPlace.id!, ...positionIds],
          dataModel: updatedUser.toJson(),
          docId: userModel.id,
        );

    //create user work place relation
    TransactionDataModel createTempUserWrokPlaceRelation =
        TransactionDataModel.getDocumentTransactionDataForWrite(
          types: getDataTypes(
            DataModel.userWorkPlaceRelation,
            docId: userModel.id,
          ),
          dataModelEnum: DataModel.userWorkPlaceRelation,
          userId: userId,
          dataModel: relation.toJson(),
          docId: workPlace.id,
        );
    //create templ user av
    TransactionDataModel createTempUserAv =
        TransactionDataModel.getDocumentTransactionDataForWrite(
          types: getDataTypes(DataModel.tempUserAvailabilities),
          dataModelEnum: DataModel.tempUserAvailabilities,
          userId: userId,
          dataModel: tempUserAv.toJson(),
          docId: userModel.id,
        );

    // create user work place ordinal
    //get count
    final childrenRef = FirebaseFirestore.instance
        .collection('workPlace')
        .doc(workPlace.id)
        .collection('children');

    final aggregateQuery = childrenRef.count();
    final snapshot = await aggregateQuery.get();
    TransactionDataModel creaeteUserWorkPlaceInfo =
        TransactionDataModel.getDocumentTransactionDataForWrite(
          types: getDataTypes(DataModel.userWorkPlaceInfo, docId: workPlace.id),
          dataModelEnum: DataModel.userWorkPlaceInfo,
          userId: userId,
          dataModel:
              UserWorkPlaceInfo(
                isTempUser: true,
                id: userModel.id!,
                ordinal: snapshot.count!,
                workPlaceNickName: userModel.nickName,
                positions: positionIds,
              ).toJson(),
          docId: userModel.id!,
        );

    return await TransactionDataModel.run([
      createTempUser,
      createTempUserWrokPlaceRelation,
      createTempUserAv,
      creaeteUserWorkPlaceInfo,
    ]);
  }

  static Future<ApiResponse<List<UserWorkPlaceRelation>>>
  getUserWorkPlaceRelation(String userId, {bool? active}) async {
    return DatabaseService.getAllDocuments<UserWorkPlaceRelation>(
      types: getDataTypes(DataModel.userWorkPlaceRelation, docId: userId),
      queryBuilder:
          (path) =>
              active == null
                  ? FirebaseFirestore.instance.collection(path).get()
                  : FirebaseFirestore.instance
                      .collection(path)
                      .where('isActive', isEqualTo: active)
                      .get(),
    );
  }

  static Future<ApiResponse<UserWorkPlaceRelation?>>
  getUserWorkPlaceRelationForSingleWorkPlace(
    String userId,
    String workPlaceId,
  ) async {
    return await DatabaseService.read<UserWorkPlaceRelation>(
      types: getDataTypes(DataModel.userWorkPlaceRelation, docId: userId),
      docId: workPlaceId,
    );
  }

  static Future<ApiResponse<UserWorkPlaceInfo?>> getUserWorkPlaceInfo(
    String userId,
    String workPlaceId,
  ) async {
    return await DatabaseService.read<UserWorkPlaceInfo>(
      types: getDataTypes(DataModel.userWorkPlaceInfo, docId: workPlaceId),
      docId: userId,
    );
  }

  static Future<ApiResponse<List<UserWorkPlaceInfo>>>
  getWorkPlaceUserUserWorkPlaceInfos(
    String placeId,
    bool withTempUser,
    bool onlyTempUser,
  ) async {
    return DatabaseService.getAllDocuments<UserWorkPlaceInfo>(
      types: getDataTypes(DataModel.userWorkPlaceInfo, docId: placeId),
      queryBuilder:
          (path) =>
              onlyTempUser
                  ? FirebaseFirestore.instance
                      .collection(path)
                      .where('isTempUser', isEqualTo: true)
                      .get()
                  : withTempUser
                  ? FirebaseFirestore.instance.collection(path).get()
                  : FirebaseFirestore.instance
                      .collection(path)
                      .where('isTempUser', isEqualTo: false)
                      .get(),
    );
  }
}
