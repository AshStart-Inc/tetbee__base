import 'package:tetbee__base/data_services/schedule/data/schedule_api.dart';
import 'package:tetbee__base/database_service/error_handling/api_error_handler_mixin.dart';
import 'package:tetbee__base/models/schedule/schedule_container.dart';
import 'package:tetbee__base/models/schedule/time_off_request.dart';
import 'package:tetbee__base/models/schedule/user_schedule.dart';
import 'package:tetbee__base/models/schedule/work_place_preset_schedule_times.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';
import 'package:tetbee__base/utils/enums.dart';

class ScheduleDataSource with ApiErrorHandlerMixin {
  Future<String> createScheduleContainer(
    String userId,
    String placeId,
    ScheduleContainer scheduleContainer,
  ) async {
    return execute(
      () => ScheduleApi.createScheduleContainer(
        userId,
        placeId,
        scheduleContainer,
      ),
    );
  }

  Future<ScheduleContainer?> getScheduleContainer(
    String placeId,
    DateTime startDate,
  ) async {
    return execute(() => ScheduleApi.getScheduleContainer(placeId, startDate));
  }

  Future<String> createWorkPlacePresetTime(
    String placeId,
    String userId,

    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return execute(
      () => ScheduleApi.createWorkPlacePresetTime(
        placeId,
        userId,
        workPlaceSchedulePresetTimes,
      ),
    );
  }

  Future<WorkPlaceSchedulePresetTimes?> getPresetTimes(String placeId) async {
    return execute(() => ScheduleApi.getPresetTimes(placeId));
  }

  Future<bool> updatePresetTimes(
    String placeId,
    String userId,
    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return execute(
      () => ScheduleApi.updatePresetTimes(
        placeId,
        userId,
        workPlaceSchedulePresetTimes,
      ),
    );
  }

  //user schedule
  Future<String> createUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return execute(() => ScheduleApi.createUserSchedule(userId, userSchedule));
  }

  Future<bool> updateUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return execute(() => ScheduleApi.updateUserSchedule(userId, userSchedule));
  }

  Future<List<UserSchedule>> getUserSchedulesForScheduleContainer(
    String workPlaceId,
    String scheduleContainerId,
  ) async {
    return execute(
      () => ScheduleApi.getUserSchedulesForScheduleContainer(
        workPlaceId,
        scheduleContainerId,
      ),
    );
  }

  Future<String> createTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return execute(
      () => ScheduleApi.createTimeOffRequest(timeOffRequest, placeId, userId),
    );
  }

  Future<bool> updateTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return execute(
      () => ScheduleApi.updateTimeOffRequest(timeOffRequest, placeId, userId),
    );
  }

  Future<List<TimeOffRequest>> getTimeOffRequestsForSchedule(
    String placeId,
    List<String> filterKeys, {
    List<DocumentStatus>? status,
  }) async {
    return execute(
      () => ScheduleApi.getTimeOffRequestsForSchedule(
        placeId,
        filterKeys,
        status: status,
      ),
    );
  }

  Future<TempUserAvailabilities> getTempUserAvailability(
    String tempUserId,
  ) async {
    return execute(() => ScheduleApi.getTempUserAvailability(tempUserId));
  }

  Future<bool> updateTempUserAvailability(
    String currentUserId,
    String tempUserId,
    TempUserAvailabilities tempUserAvailabilities,
  ) async {
    return execute(
      () => ScheduleApi.updateTempUserAvailability(
        currentUserId,
        tempUserId,
        tempUserAvailabilities,
      ),
    );
  }
}
