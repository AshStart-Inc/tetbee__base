import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/availability/data/repository/availability_repository.dart';
import 'package:tetbee__base/tetbee__base.dart';

final AvailabilityService availabilityService = AvailabilityService();

class AvailabilityService with ApiServiceMixin {
  Future<Either<Failure, String>> createAvailabilityReceiver(
    String userId,
    String placeId,
    AvailabilityReceiver availbilityReceiver,
  ) async {
    return execute(
      () => AvailabilityRepository().createAvailabilityReceiver(
        userId,
        placeId,
        availbilityReceiver,
      ),
      'Error while createAvailabilityReceiver',
    );
  }

  // Future<Either<Failure, WorkPlace?>> getWorkPlace(String id) async {
  //   return execute(
  //     () => WorkPlaceRepository().getWorkPlace(id),
  //     'Error while getting work place',
  //   );
  // }
}
