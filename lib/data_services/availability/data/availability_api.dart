import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/tetbee__base.dart';

class AvailabilityApi {
  static Future<ApiResponse<String>> createAvailabilityReceiver(
    String userId,
    String placeId,
    AvailabilityReceiver availabilityReceiver,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.availabilityReceiver, docId: placeId),
      dataModel: DataModel.availabilityReceiver,
      userId: userId,
      data: availabilityReceiver.toJson(),
    );
  }

  static Future<ApiResponse<bool>> updateAvailabilityReceiver(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,
    Map<String, dynamic> updatedData,
  ) async {
    return await DatabaseService.update(
      baseData: availabilityReceiver.toJson(),
      types: getDataTypes(DataModel.availabilityReceiver, docId: placeId),
      dataModel: DataModel.availabilityReceiver,
      updatedData: updatedData,
      userId: userId,
      docId: availabilityReceiver.id!,
    );
  }

  static Future<ApiResponse<String>> submitAvailability(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,
    UserAvailabilities userAvailabilities,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(
        DataModel.userAvailabilities,
        docId: placeId,
        docId2: availabilityReceiver.id,
      ),
      dataModel: DataModel.userAvailabilities,
      userId: userId,
      data: userAvailabilities.toJson(),
      docId: userId,
    );
  }

  static Future<ApiResponse<List<UserAvailabilities>>> getUserAvailabilities(
    String placeId,
    String availabilityId,
  ) async {
    return DatabaseService.getAllDocuments<UserAvailabilities>(
      types: getDataTypes(
        DataModel.userAvailabilities,
        docId: placeId,
        docId2: availabilityId,
      ),
      queryBuilder: (path) => FirebaseFirestore.instance.collection(path).get(),
    );
  }

  static Future<ApiResponse<AvailabilityReceiver?>> getAvailabilityReceiver(
    String placeId,
    String availabilityId,
  ) async {
    return DatabaseService.read<AvailabilityReceiver>(
      types: getDataTypes(DataModel.availabilityReceiver, docId: placeId),
      docId: availabilityId,
    );
  }
}
