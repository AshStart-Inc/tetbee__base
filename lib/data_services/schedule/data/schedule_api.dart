import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';
import 'package:tetbee__base/tetbee__base.dart';

class ScheduleApi {
  static Future<ApiResponse<String>> createScheduleContainer(
    String userId,
    String placeId,
    ScheduleContainer scheduleContainer,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.scheduleContainer, docId: placeId),
      dataModel: DataModel.scheduleContainer,
      userId: userId,
      data: scheduleContainer.toJson(),
      docId: scheduleContainer.startDate!.toIsoDateString,
    );
  }

  static Future<ApiResponse<ScheduleContainer?>> getScheduleContainer(
    String placeId,
    DateTime startDate,
  ) async {
    return await DatabaseService.read<ScheduleContainer>(
      types: getDataTypes(DataModel.scheduleContainer, docId: placeId),
      docId: startDate.toIsoDateString,
    );
  }

  static Future<ApiResponse<String>> createWorkPlacePresetTime(
    String placeId,
    String userId,
    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.workPlaceSchedulePresetTimes),
      dataModel: DataModel.workPlaceSchedulePresetTimes,
      userId: userId,
      data: workPlaceSchedulePresetTimes.toJson(),
      docId: placeId,
    );
  }

  static Future<ApiResponse<WorkPlaceSchedulePresetTimes?>> getPresetTimes(
    String placeId,
  ) async {
    return await DatabaseService.read<WorkPlaceSchedulePresetTimes>(
      types: getDataTypes(DataModel.workPlaceSchedulePresetTimes),
      docId: placeId,
    );
  }

  static Future<ApiResponse<bool>> updatePresetTimes(
    String placeId,
    String userId,
    WorkPlaceSchedulePresetTimes workPlaceSchedulePresetTimes,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(DataModel.workPlaceSchedulePresetTimes),
      dataModel: DataModel.workPlaceSchedulePresetTimes,
      userId: userId,
      baseData: workPlaceSchedulePresetTimes.toJson(),
      updatedData: workPlaceSchedulePresetTimes.toJson(),
      docId: placeId,
    );
  }

  //user schedule
  static Future<ApiResponse<String>> createUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(
        DataModel.userSchedule,
        docId: userSchedule.workPlaceId,
      ),
      dataModel: DataModel.userSchedule,
      userId: userId,
      data: userSchedule.toJson(),
      docId: userSchedule.userScheduleId,
    );
  }

  static Future<ApiResponse<bool>> updateUserSchedule(
    String userId,
    UserSchedule userSchedule,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(
        DataModel.userSchedule,
        docId: userSchedule.workPlaceId,
      ),
      dataModel: DataModel.userSchedule,
      userId: userId,
      baseData: userSchedule.toJson(),
      updatedData: {'schedules': userSchedule.toJson()['schedules']},
      docId: userSchedule.id!,
    );
  }

  static Future<ApiResponse<List<UserSchedule>>>
  getUserSchedulesForScheduleContainer(
    String workPlaceId,
    String scheduleContainerId,
  ) async {
    return DatabaseService.getAllDocuments<UserSchedule>(
      types: getDataTypes(DataModel.userSchedule, docId: workPlaceId),
      queryBuilder:
          (path) =>
              FirebaseFirestore.instance
                  .collection(path)
                  .where('scheduleContainerId', isEqualTo: scheduleContainerId)
                  .get(),
    );
  }

  static Future<ApiResponse<List<UserSchedule>>> getUserSchedulesForDate(
    String workPlaceId,
    DateTime baseDate,
  ) async {
    return DatabaseService.getAllDocuments<UserSchedule>(
      types: getDataTypes(DataModel.userSchedule, docId: workPlaceId),
      queryBuilder:
          (path) =>
              FirebaseFirestore.instance
                  .collection(path)
                  .where('scheduleDate', isEqualTo: baseDate.toIsoDateString)
                  .get(),
    );
  }

  static Future<ApiResponse<String>> createTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.timeOffRequest, docId: placeId),
      dataModel: DataModel.timeOffRequest,
      userId: userId,
      data: timeOffRequest.toJson(),
    );
  }

  static Future<ApiResponse<bool>> updateTimeOffRequest(
    TimeOffRequest timeOffRequest,
    String placeId,
    String userId,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(DataModel.timeOffRequest, docId: placeId),
      dataModel: DataModel.timeOffRequest,
      userId: userId,
      baseData: timeOffRequest.toJson(),
      docId: timeOffRequest.id!,
    );
  }

  static Future<ApiResponse<List<TimeOffRequest>>>
  getTimeOffRequestsForSchedule(
    String placeId,
    List<String> filterKeys, {
    List<DocumentStatus>? status,
  }) async {
    return DatabaseService.getAllDocuments<TimeOffRequest>(
      types: getDataTypes(DataModel.timeOffRequest, docId: placeId),
      queryBuilder:
          (path) =>
              FirebaseFirestore.instance
                  .collection(path)
                  .where('filters', arrayContainsAny: filterKeys)
                  .where('createdAt')
                  .where(
                    'status',
                    whereIn:
                        status == null
                            ? [
                              DocumentStatus.onSubmit.name,
                              DocumentStatus.onReview.name,
                              DocumentStatus.onConfirmed.name,
                            ]
                            : [...status.map((status) => status.name)],
                  )
                  .get(),
    );
  }

  //temp user
  static Future<ApiResponse<TempUserAvailabilities>> getTempUserAvailability(
    String tempUserId,
  ) async {
    return await DatabaseService.read<TempUserAvailabilities>(
      types: getDataTypes(DataModel.tempUserAvailabilities),
      docId: tempUserId,
    );
  }

  static Future<ApiResponse<bool>> updateTempUserAvailability(
    String currentUserId,
    String tempUserId,
    TempUserAvailabilities tempUserAvailabilities,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(DataModel.tempUserAvailabilities),
      dataModel: DataModel.tempUserAvailabilities,
      userId: currentUserId,
      baseData: tempUserAvailabilities.toJson(),
      docId: tempUserId,
    );
  }

  //sign out
  static Future<ApiResponse<bool>> scheduleSignOut(
    String workPlaceId,
    String userId,
    DateTime baseDate,
    UserSchedule userSchedule,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(DataModel.userSchedule, docId: workPlaceId),
      dataModel: DataModel.userSchedule,
      userId: userId,
      baseData: userSchedule.toJson(),
      docId: getUserScheduleIdByDate(baseDate, userId),
    );
  }

  static Future<ApiResponse<DailyScheduleSignOutReview?>>
  getDailyScheduleSignOutReview(
    String workPlaceId,
    String userId,
    DateTime baseDate,
  ) async {
    return await DatabaseService.read<DailyScheduleSignOutReview>(
      types: getDataTypes(
        DataModel.dailyScheduleSignOutReview,
        docId: workPlaceId,
      ),
      docId: baseDate.toIsoDateString,
    );
  }

  static Future<ApiResponse<String>> createDailyScheduleSignOutReview(
    String workPlaceId,
    String userId,
    DateTime baseDate,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(
        DataModel.dailyScheduleSignOutReview,
        docId: workPlaceId,
      ),
      dataModel: DataModel.dailyScheduleSignOutReview,
      userId: userId,
      data: DailyScheduleSignOutReview().toJson(),
      docId: baseDate.toIsoDateString,
    );
  }

  static Future<ApiResponse<bool>> updateDailyScheduleSignOutReview(
    String workPlaceId,
    String userId,
    DateTime baseDate,
    DailyScheduleSignOutReview dailyScheduleSignOutReview,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(
        DataModel.dailyScheduleSignOutReview,
        docId: workPlaceId,
      ),
      dataModel: DataModel.dailyScheduleSignOutReview,
      userId: userId,
      baseData: dailyScheduleSignOutReview.toJson(),
      docId: baseDate.toIsoDateString,
    );
  }
}
