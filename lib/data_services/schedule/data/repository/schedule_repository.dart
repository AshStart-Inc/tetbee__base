import 'package:tetbee__base/data_services/schedule/data/data_soruce/schedule_data_source.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';
import 'package:tetbee__base/utils/enums.dart';

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

  Future<bool> updateScheduleContainer(
    String placeId,
    String userId,
    ScheduleContainer baseDate,
    Map<String, dynamic>? updatedData,
  ) async {
    return await ScheduleDataSource().updateScheduleContainer(
      placeId,
      userId,
      baseDate,
      updatedData,
    );
  }

  Future<bool> deleteScheduleContainer(
    String placeId,
    String userId,
    String scheduleContainerId,
  ) async {
    return await ScheduleDataSource().deleteScheduleContainer(
      placeId,
      userId,
      scheduleContainerId,
    );
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

  Future<bool> deleteUserSchedule(UserSchedule userSchedule) async {
    return await ScheduleDataSource().deleteUserSchedule(userSchedule);
  }

  Future<List<UserSchedule>> getSingleUserSchedulesForScheduleContainer(
    String workPlaceId,
    String scheduleUserId,
    String scheduleContainerId,
  ) async {
    return await ScheduleDataSource()
        .getSingleUserSchedulesForScheduleContainer(
          workPlaceId,
          scheduleUserId,
          scheduleContainerId,
        );
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

  Future<List<UserSchedule>> getUserSchedulesForDate(
    String workPlaceId,
    DateTime baseDate,
  ) async {
    return await ScheduleDataSource().getUserSchedulesForDate(
      workPlaceId,
      baseDate,
    );
  }

  Future<String> createTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return await ScheduleDataSource().createTimeOffRequest(
      timeOffRequest,
      placeId,
      userId,
    );
  }

  Future<bool> updateTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return await ScheduleDataSource().updateTimeOffRequest(
      timeOffRequest,
      placeId,
      userId,
    );
  }

  Future<List<TimeOffRequest>> getTimeOffRequestsForSchedule(
    String placeId,
    List<String> filterKeys, {
    List<DocumentStatus>? status,
  }) async {
    return await ScheduleDataSource().getTimeOffRequestsForSchedule(
      placeId,
      filterKeys,
      status: status,
    );
  }

  Future<TempUserAvailabilities> getTempUserAvailability(
    String tempUserId,
  ) async {
    return await ScheduleDataSource().getTempUserAvailability(tempUserId);
  }

  Future<bool> updateTempUserAvailability(
    String currentUserId,
    String tempUserId,
    TempUserAvailabilities tempUserAvailabilities,
  ) async {
    return await ScheduleDataSource().updateTempUserAvailability(
      currentUserId,
      tempUserId,
      tempUserAvailabilities,
    );
  }

  Future<bool> scheduleSignOut(
    String workPlaceId,
    String userId,
    DateTime baseDate,
    UserSchedule userSchedule,
  ) async {
    return await ScheduleDataSource().scheduleSignOut(
      workPlaceId,
      userId,
      baseDate,
      userSchedule,
    );
  }

  Future<DailyScheduleSignOutReview?> getDailyScheduleSignOutReview(
    String workPlaceId,
    String userId,
    DateTime baseDate,
  ) async {
    return await ScheduleDataSource().getDailyScheduleSignOutReview(
      workPlaceId,
      userId,
      baseDate,
    );
  }

  Future<String> createDailyScheduleSignOutReview(
    String workPlaceId,
    String userId,
    DateTime baseDate,
  ) async {
    return await ScheduleDataSource().createDailyScheduleSignOutReview(
      workPlaceId,
      userId,
      baseDate,
    );
  }

  Future<bool> updateDailyScheduleSignOutReview(
    String workPlaceId,
    String userId,
    DateTime baseDate,
    DailyScheduleSignOutReview dailyScheduleSignOutReview,
  ) async {
    return await ScheduleDataSource().updateDailyScheduleSignOutReview(
      workPlaceId,
      userId,
      baseDate,
      dailyScheduleSignOutReview,
    );
  }

  Future<String> createWorkHourCalculationHistory(
    String userId,
    String placeId,
    WorkHourCalculationHistory history,
  ) async {
    return await ScheduleDataSource().createWorkHourCalculationHistory(
      userId,
      placeId,
      history,
    );
  }
}
