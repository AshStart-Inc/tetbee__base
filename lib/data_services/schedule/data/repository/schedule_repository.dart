import 'package:tetbee__base/data_services/schedule/data/data_soruce/schedule_data_source.dart';
import 'package:tetbee__base/models/models.dart';

class ScheduleRepository {
  Future<String> createScheduleContainer(
    String userId,
    String placeId,
    ScheduleContainer scheduleContainer,
  ) async {
    return await ScheduleDataSource().createScheduleContainer(
      userId,
      placeId,
      scheduleContainer,
    );
  }

  Future<ScheduleContainer?> getScheduleContainer(
    String placeId,
    DateTime startDate,
  ) async {
    return await ScheduleDataSource().getScheduleContainer(placeId, startDate);
  }

  Future<String> createWorkPlacePresetTime(
    String placeId,
    String userId,
    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return await ScheduleDataSource().createWorkPlacePresetTime(
      placeId,
      userId,
      workPlaceSchedulePresetTimes,
    );
  }

  Future<WorkPlaceSchedulePresetTimes?> getPresetTimes(String placeId) async {
    return await ScheduleDataSource().getPresetTimes(placeId);
  }

  Future<bool> updatePresetTimes(
    String placeId,
    String userId,
    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return await ScheduleDataSource().updatePresetTimes(
      placeId,
      userId,
      workPlaceSchedulePresetTimes,
    );
  }

  //user schedule
  Future<String> createUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return await ScheduleDataSource().createUserSchedule(userId, userSchedule);
  }

  Future<bool> updateUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return await ScheduleDataSource().updateUserSchedule(userId, userSchedule);
  }

  Future<List<UserSchedule>> getUserSchedulesForScheduleContainer(
    String workPlaceId,
    String scheduleContainerId,
  ) async {
    return await ScheduleDataSource().getUserSchedulesForScheduleContainer(
      workPlaceId,
      scheduleContainerId,
    );
  }
}
