import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';
import 'package:tetbee__base/tetbee__base.dart';

List<String> getDataFilter(Map<String, dynamic> data, DataModel dataModel) {
  switch (dataModel) {
    case DataModel.appInfo:
      return [];
    case DataModel.userModel:
      UserModel userModel = UserModel.fromJson(data);
      List<String> placeIds = [];
      List<String> positionIds = [];
      for (var relation in userModel.userWorkPlaceRelation) {
        if (relation.isActive) {
          placeIds.add(relation.workPlaceId);
          positionIds.addAll(relation.positions);
        }
      }
      return [...placeIds, ...positionIds];
    case DataModel.workPlace:
      return [];
    case DataModel.chatRoom:
      ChatRoom chatRoom = ChatRoom.fromJson(data);
      return [...chatRoom.userStatus.keys];
    case DataModel.availabilityReceiver:
      return [];
    case DataModel.joinRequest:
      return [];
    case DataModel.userAvailabilities:
      return [];
    case DataModel.scheduleContainer:
      ScheduleContainer scheduleContainer = ScheduleContainer.fromJson(data);
      bool isSameYear =
          scheduleContainer.startDate!.year == scheduleContainer.endDate!.year;
      bool isSameMonth =
          scheduleContainer.startDate!.month ==
          scheduleContainer.endDate!.month;
      return [
        scheduleContainer.startDate!.toIsoYearString,
        if (!isSameYear) scheduleContainer.endDate!.toIsoYearString,
        scheduleContainer.startDate!.toIsoMonthString,
        if (!isSameMonth) scheduleContainer.endDate!.toIsoMonthString,
      ];
    case DataModel.workPlaceSchedulePresetTimes:
      return [];
    case DataModel.placePosition:
      return [];
    case DataModel.userSchedule:
      UserSchedule userSchedule = UserSchedule.fromJson(data);
      DateTime scheduleDate =
          Helpers.dateFromJsonIso(userSchedule.scheduleDate)!;
      return [
        scheduleDate.toIsoMonthString,
        scheduleDate.toIsoYearString,
        ...userSchedule.schedules.values.map((usche) => usche.positionCode),
      ];
  }
}

T parseData<T>(DocumentSnapshot<Object?> doc) {
  Map<String, dynamic> data = {...doc.data() as Map<String, dynamic>};
  switch (T) {
    case const (AppInfo):
      return AppInfo.fromJson(data).copyWith() as T;
    case const (UserModel):
      return UserModel.fromJson(data).copyWith(id: doc.id) as T;
    case const (WorkPlace):
      return WorkPlace.fromJson(data).copyWith(id: doc.id) as T;
    case const (ChatRoom):
      return ChatRoom.fromJson(data).copyWith(id: doc.id) as T;
    case const (AvailabilityReceiver):
      return AvailabilityReceiver.fromJson(data).copyWith(id: doc.id) as T;
    case const (JoinRequest):
      return JoinRequest.fromJson(data).copyWith(id: doc.id) as T;
    case const (UserAvailabilities):
      return UserAvailabilities.fromJson(data).copyWith(id: doc.id) as T;
    case const (ScheduleContainer):
      return ScheduleContainer.fromJson(data).copyWith(id: doc.id) as T;
    case const (WorkPlaceSchedulePresetTimes):
      return WorkPlaceSchedulePresetTimes.fromJson(data).copyWith(id: doc.id)
          as T;
    case const (PositionModel):
      return PositionModel.fromJson(data).copyWith(id: doc.id) as T;
    case const (UserSchedule):
      return UserSchedule.fromJson(data).copyWith(id: doc.id) as T;
    case const (Map<String, dynamic>):
      return {'id': doc.id, ...data} as T;
    default:
      throw Exception('Unknown type');
  }
}
