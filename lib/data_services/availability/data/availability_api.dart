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

  // static Future<ApiResponse<AvailabilityReceiver?>> getAvailabilityReceiver(
  //   String placeId,
  // ) async {
  //   return await DatabaseService.read<AvailabilityReceiver>(
  //     types: getDataTypes(DataModel.workPlace),
  //     docId: placeId,
  //   );
  // }
}
