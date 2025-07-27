import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/database_service/api_handling_mixin.dart';
import 'package:tetbee__base/models/availability/availability_reminder_request.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/tetbee__base.dart';

class AvailabilityApi with ApiHandlingMixin {
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

  static Future<ApiResponse<UserAvailabilities?>> getUserAvailability(
    String userId,
    String placeId,
    String availabilityId,
  ) async {
    return DatabaseService.read<UserAvailabilities>(
      types: getDataTypes(
        DataModel.userAvailabilities,
        docId: placeId,
        docId2: availabilityId,
      ),
      docId: userId,
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
  // preset availabilities

  static Future<ApiResponse<String>> createMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(
        DataModel.myPresetAvailability,
        docId: userId,
        docId2: placeId,
      ),
      dataModel: DataModel.myPresetAvailability,
      userId: userId,
      data: myPresetAvailability.toJson(),
    );
  }

  static Future<ApiResponse<bool>> updateMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return await DatabaseService.update(
      baseData: myPresetAvailability.toJson(),
      types: getDataTypes(
        DataModel.myPresetAvailability,
        docId: userId,
        docId2: placeId,
      ),
      dataModel: DataModel.myPresetAvailability,
      userId: userId,
      docId: myPresetAvailability.id!,
    );
  }

  static Future<ApiResponse<List<MyPresetAvailability>>>
  getMyPresetAvailabilities(
    String userId,
    String placeId, {
    bool getSelected = false,
  }) async {
    return DatabaseService.getAllDocuments<MyPresetAvailability>(
      types: getDataTypes(
        DataModel.myPresetAvailability,
        docId: userId,
        docId2: placeId,
      ),
      queryBuilder: (path) {
        return getSelected
            ? FirebaseFirestore.instance
                .collection(path)
                .where('deleted', isEqualTo: false)
                .where('isSelected', isEqualTo: true)
                .orderBy('createdAt')
                .get()
            : FirebaseFirestore.instance
                .collection(path)
                .where('deleted', isEqualTo: false)
                .orderBy('createdAt')
                .get();
      },
    );
  }

  Future<ApiResponse<bool>> sendAvailabilityReminder(
    AvailabilityReminderRequest availabilityReminderRequest,
  ) async {
    return await executeFirebaseFunction<bool>(
      'availability-sendRemindNotification',
      availabilityReminderRequest.toJson(),
    );
  }
}
