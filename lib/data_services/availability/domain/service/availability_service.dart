import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/availability/data/repository/availability_repository.dart';
import 'package:tetbee__base/models/availability/availability_reminder_request.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
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
  static Map<String, RangedTimeModel> defaultAvailabilityTimeRange = {
    '1': RangedTimeModel(
      weekDay: 1,
      startTime: DateTime(baseMon.year, baseMon.month, baseMon.day, 00, 00),
      endTime: DateTime(baseMon.year, baseMon.month, baseMon.day + 1, 06, 00),
    ),
    '2': RangedTimeModel(
      weekDay: 2,
      startTime: DateTime(baseTue.year, baseTue.month, baseTue.day, 00, 00),
      endTime: DateTime(baseTue.year, baseTue.month, baseTue.day + 1, 06, 00),
    ),
    '3': RangedTimeModel(
      weekDay: 3,
      startTime: DateTime(baseWed.year, baseWed.month, baseWed.day, 00, 00),
      endTime: DateTime(baseWed.year, baseWed.month, baseWed.day + 1, 06, 00),
    ),
    '4': RangedTimeModel(
      weekDay: 4,
      startTime: DateTime(baseThu.year, baseThu.month, baseThu.day, 00, 00),
      endTime: DateTime(baseThu.year, baseThu.month, baseThu.day + 1, 06, 00),
    ),
    '5': RangedTimeModel(
      weekDay: 5,
      startTime: DateTime(baseFri.year, baseFri.month, baseFri.day, 00, 00),
      endTime: DateTime(baseFri.year, baseFri.month, baseFri.day + 1, 06, 00),
    ),
    '6': RangedTimeModel(
      weekDay: 6,
      startTime: DateTime(baseSat.year, baseSat.month, baseSat.day, 00, 00),
      endTime: DateTime(baseSat.year, baseSat.month, baseSat.day + 1, 06, 00),
    ),
    '7': RangedTimeModel(
      weekDay: 7,
      startTime: DateTime(baseSun.year, baseSun.month, baseSun.day, 00, 00),
      endTime: DateTime(baseSun.year, baseSun.month, baseSun.day + 1, 06, 00),
    ),
  };

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

  Future<Either<Failure, UserAvailabilities?>> getUserAvailability(
    String userId,
    String placeId,
    String availabilityId,
  ) async {
    return execute(
      () => AvailabilityRepository().getUserAvailability(
        userId,
        placeId,
        availabilityId,
      ),
      'Error while getUserAvailability',
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

  Future<Either<Failure, String>> createMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return execute(
      () => AvailabilityRepository().createMyPresetAvailability(
        myPresetAvailability,
        userId,
        placeId,
      ),
      'Error while createMyPresetAvailability',
    );
  }

  Future<Either<Failure, bool>> updateMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return execute(
      () => AvailabilityRepository().updateMyPresetAvailability(
        myPresetAvailability,
        userId,
        placeId,
      ),
      'Error while updateMyPresetAvailability',
    );
  }

  Future<Either<Failure, List<MyPresetAvailability>>> getMyPresetAvailabilities(
    String userId,
    String placeId, {
    bool getSelected = false,
  }) async {
    return execute(
      () => AvailabilityRepository().getMyPresetAvailabilities(
        userId,
        placeId,
        getSelected: getSelected,
      ),
      'Error while getMyPresetAvailabilities',
    );
  }

  Future<Either<Failure, bool>> sendAvailabilityReminder(
    AvailabilityReminderRequest availabilityReminderRequest,
  ) async {
    return execute(
      () => AvailabilityRepository().sendAvailabilityReminder(
        availabilityReminderRequest,
      ),
      'Error while sendAvailabilityReminder',
    );
  }
}
