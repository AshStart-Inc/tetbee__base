import 'package:cloud_firestore/cloud_firestore.dart';
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
}
