import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/schedule/data/repository/schedule_repository.dart';
import 'package:tetbee__base/tetbee__base.dart';

final ScheduleService scheduleService = ScheduleService();

class ScheduleService with ApiServiceMixin {
  Future<Either<Failure, String>> createAvailabilityReceiver(
    String userId,
    String placeId,
    ScheduleContainer scheduleContainer,
  ) async {
    return execute(
      () => ScheduleRepository().createScheduleContainer(
        userId,
        placeId,
        scheduleContainer,
      ),
      'Error while createScheduleContainer',
    );
  }

  Future<Either<Failure, ScheduleContainer?>> getScheduleContainer(
    String placeId,
    DateTime startDate,
  ) async {
    return execute(
      () => ScheduleRepository().getScheduleContainer(placeId, startDate),
      'Error while getScheduleContainer',
    );
  }

  Future<Either<Failure, String>> createWorkPlacePresetTime(
    String placeId,
    String userId,
    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return execute(
      () => ScheduleRepository().createWorkPlacePresetTime(
        placeId,
        userId,
        workPlaceSchedulePresetTimes,
      ),
      'Error while createWorkPlacePresetTime',
    );
  }

  Future<Either<Failure, WorkPlaceSchedulePresetTimes?>> getPresetTimes(
    String placeId,
  ) async {
    return execute(
      () => ScheduleRepository().getPresetTimes(placeId),
      'Error while getPresetTimes',
    );
  }

  Future<Either<Failure, bool>> updatePresetTimes(
    String placeId,
    String userId,
    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return execute(
      () => ScheduleRepository().updatePresetTimes(
        placeId,
        userId,
        workPlaceSchedulePresetTimes,
      ),
      'Error while updatePresetTimes',
    );
  }

  //user schedule
  Future<Either<Failure, String>> createUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return execute(
      () => ScheduleRepository().createUserSchedule(userId, userSchedule),
      'Error while createUserSchedule',
    );
  }

  Future<Either<Failure, bool>> updateUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return execute(
      () => ScheduleRepository().updateUserSchedule(userId, userSchedule),
      'Error while updateUserSchedule',
    );
  }

  Future<Either<Failure, List<UserSchedule>>>
  getUserSchedulesForScheduleContainer(
    String workPlaceId,
    String scheduleContainerId,
  ) async {
    return execute(
      () => ScheduleRepository().getUserSchedulesForScheduleContainer(
        workPlaceId,
        scheduleContainerId,
      ),
      'Error while getUserSchedulesForScheduleContainer',
    );
  }
}
