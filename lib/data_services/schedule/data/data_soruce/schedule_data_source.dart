import 'package:tetbee__base/data_services/schedule/data/schedule_api.dart';
import 'package:tetbee__base/database_service/error_handling/api_error_handler_mixin.dart';
import 'package:tetbee__base/models/schedule/schedule_container.dart';
import 'package:tetbee__base/models/schedule/user_schedule.dart';
import 'package:tetbee__base/models/schedule/work_place_preset_schedule_times.dart';

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
}
