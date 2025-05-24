import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/models.dart';

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
  ) async {
    return DatabaseService.getAllDocuments<UserModel>(
      types: getDataTypes(DataModel.userModel),
      queryBuilder:
          (path) =>
              FirebaseFirestore.instance
                  .collection(path)
                  .where(DatabaseService.filtersKey, arrayContains: placeId)
                  .get(),
    );
  }
}
