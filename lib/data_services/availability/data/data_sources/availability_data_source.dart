import 'package:tetbee__base/data_services/availability/data/availability_api.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/models.dart';

class AvailabilityDataSource with ApiErrorHandlerMixin {
  Future<String> createAvailabilityReceiver(
    String userId,
    String placeId,
    AvailabilityReceiver availbilityReceiver,
  ) async {
    return execute(
      () => AvailabilityApi.createAvailabilityReceiver(
        userId,
        placeId,
        availbilityReceiver,
      ),
    );
  }
}
