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
    UserModel updatedUser = userModel.copyWith(
      userWorkPlaceRelation: [
        UserWorkPlaceRelation(
          isActive: true,
          isSelected: true,
          workPlaceId: workPlace.id!,
          workPlaceNickName: userModel.nickName,
          positions: positionIds,
          joinedAt: DateTime.now(),
        ),
      ],
    );
    //create user
    TransactionDataModel createTempUser =
        TransactionDataModel.getDocumentTransactionDataForWrite(
          types: getDataTypes(DataModel.userModel),
          dataModelEnum: DataModel.userModel,
          userId: userId,
          filters: getDataFilter(updatedUser.toJson(), DataModel.userModel),
          dataModel: updatedUser.toJson(),
          docId: userModel.id,
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
    //update placemodel
    WorkPlace updatedWorkPlace = workPlace.copyWith(
      joinedUsersOrdinal: {
        ...workPlace.joinedUsersOrdinal,
        userModel.id!: workPlace.joinedUsersOrdinal.length + 1,
      },
    );

    TransactionDataModel updateWorkPlace =
        TransactionDataModel.getDocumentTransactionDataForUpdate(
          types: getDataTypes(DataModel.workPlace),
          dataModelEnum: DataModel.workPlace,
          userId: userId,
          dataModel: updatedWorkPlace.toJson(),
          docId: updatedWorkPlace.id!,
        );

    return await TransactionDataModel.run([
      createTempUser,
      createTempUserAv,
      updateWorkPlace,
    ]);
  }
}
