import 'package:tetbee__base/data_services/availability/data/data_sources/availability_data_source.dart';
import 'package:tetbee__base/models/models.dart';

class AvailabilityRepository {
  Future<String> createAvailabilityReceiver(
    String userId,
    String placeId,
    AvailabilityReceiver availbilityReceiver,
  ) async {
    return await AvailabilityDataSource().createAvailabilityReceiver(
      userId,
      placeId,
      availbilityReceiver,
    );
  }
}
