import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/schedule/data/repository/schedule_repository.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';
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

  Future<Either<Failure, String>> createTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return execute(
      () => ScheduleRepository().createTimeOffRequest(
        timeOffRequest,
        placeId,
        userId,
      ),
      'Error while createTimeOffRequest',
    );
  }

  Future<Either<Failure, bool>> updateTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return execute(
      () => ScheduleRepository().updateTimeOffRequest(
        timeOffRequest,
        placeId,
        userId,
      ),
      'Error while updateTimeOffRequest',
    );
  }

  Future<Either<Failure, List<TimeOffRequest>>> getTimeOffRequestsForSchedule(
    String placeId,
    List<String> filterKeys, {
    List<DocumentStatus>? status,
  }) async {
    return execute(
      () => ScheduleRepository().getTimeOffRequestsForSchedule(
        placeId,
        filterKeys,
        status: status,
      ),
      'Error while getTimeOffRequestsForSchedule',
    );
  }

  Future<Either<Failure, TempUserAvailabilities>> getTempUserAvailability(
    String tempUserId,
  ) async {
    return execute(
      () => ScheduleRepository().getTempUserAvailability(tempUserId),
      'Error while getTempUserAvailability',
    );
  }

  Future<Either<Failure, bool>> updateTempUserAvailability(
    String currentUserId,
    String tempUserId,
    TempUserAvailabilities tempUserAvailabilities,
  ) async {
    return execute(
      () => ScheduleRepository().updateTempUserAvailability(
        currentUserId,
        tempUserId,
        tempUserAvailabilities,
      ),
      'Error while updateTempUserAvailability',
    );
  }

  Future<Either<Failure, bool>> scheduleSignOut(
    String workPlaceId,
    String userId,
    DateTime baseDate,
    UserSchedule userSchedule,
  ) async {
    return execute(
      () => ScheduleRepository().scheduleSignOut(
        workPlaceId,
        userId,
        baseDate,
        userSchedule,
      ),
      'Error while scheduleSignOut',
    );
  }
}
