import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/availability/data/repository/availability_repository.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/tetbee__base.dart';

final AvailabilityService availabilityService = AvailabilityService();

class AvailabilityService with ApiServiceMixin {
  static DateTime baseMon = DateTime(1992, 09, 07);
  static DateTime baseTue = DateTime(1992, 09, 08);
  static DateTime baseWed = DateTime(1992, 09, 09);
  static DateTime baseThu = DateTime(1992, 09, 10);
  static DateTime baseFri = DateTime(1992, 09, 11);
  static DateTime baseSat = DateTime(1992, 09, 12);
  static DateTime baseSun = DateTime(1992, 09, 13);
  static List<DateTime> baseWeek = [
    baseMon,
    baseTue,
    baseWed,
    baseThu,
    baseFri,
    baseSat,
    baseSun,
  ];

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

  Future<Either<Failure, String>> submitAvailability(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,
    UserAvailabilities userAvailabilities,
  ) async {
    return execute(
      () => AvailabilityRepository().submitAvailability(
        availabilityReceiver,
        userId,
        placeId,
        userAvailabilities,
      ),
      'Error while submitAvailability',
    );
  }

  Future<Either<Failure, bool>> updateAvailabilityReceiver(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,
    Map<String, dynamic> updatedData,
  ) async {
    return execute(
      () => AvailabilityRepository().updateAvailabilityReceiver(
        availabilityReceiver,
        userId,
        placeId,
        updatedData,
      ),
      'Error while updateAvailabilityReceiver',
    );
  }

  Future<Either<Failure, List<UserAvailabilities>>> getUserAvailabilities(
    String placeId,
    String availabilityId,
  ) async {
    return execute(
      () => AvailabilityRepository().getUserAvailabilities(
        placeId,
        availabilityId,
      ),
      'Error while getUserAvailabilities',
    );
  }

  Future<Either<Failure, AvailabilityReceiver?>> getAvailabilityReceiver(
    String placeId,
    String availabilityId,
  ) async {
    return execute(
      () => AvailabilityRepository().getAvailabilityReceiver(
        placeId,
        availabilityId,
      ),
      'Error while getAvailabilityReceiver',
    );
  }
}
