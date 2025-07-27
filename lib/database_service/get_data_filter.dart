import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/models/app_notification/app_notification_state.dart';
import 'package:tetbee__base/models/availability/my_preset_availability.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/models/chat/message_model.dart';
import 'package:tetbee__base/models/app_notification/app_notification.dart';
import 'package:tetbee__base/models/chat/user_message_read.dart';
import 'package:tetbee__base/models/common/notification_center.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/models/user/temp_user_availabilities.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';

import 'package:tetbee__base/tetbee__base.dart';

Future<List<String>> getDataFilter(
  Map<String, dynamic> data,
  DataModel dataModel,
) async {
  switch (dataModel) {
    case DataModel.appInfo:
      return [];
    case DataModel.userWorkPlaceInfo:
      return [];
    case DataModel.storedData:
      return [];
    case DataModel.notificationCenter:
      return [];
    case DataModel.userModel:
      // UserModel userModel = UserModel.fromJson(data);
      // List<String> placeIds = [];
      // List<String> positionIds = [];

      // //get work place relation
      // List<UserWorkPlaceRelation> relations = await userDataSource
      //     .getUserWorkPlaceRelation(userModel.id!, active: true);

      // //get user work Place info
      // List<Future<UserWorkPlaceInfo?>> getWorkPlaceInfo = [];
      // for (UserWorkPlaceRelation relation in relations) {
      //   placeIds.add(relation.workPlaceId);
      //   getWorkPlaceInfo.add(
      //     userDataSource.getUserWorkPlaceInfo(
      //       userModel.id!,
      //       relation.workPlaceId,
      //     ),
      //   );
      // }

      // await Future.wait(getWorkPlaceInfo).then((
      //   List<UserWorkPlaceInfo?> result,
      // ) {
      //   for (UserWorkPlaceInfo? info in result) {
      //     if (info != null) {
      //       positionIds.addAll(info.positions);
      //     }
      //   }
      // });

      return [
        // ...placeIds, ...positionIds
      ];
    case DataModel.workPlace:
      return [];

    case DataModel.tempUserAvailabilities:
      return [];
    case DataModel.chatRoom:
      ChatRoom chatRoom = ChatRoom.fromJson(data);
      return chatRoom.workPlaceId.isNotEmpty
          ? [chatRoom.workPlaceId, ...chatRoom.userStatus.keys]
          : [...chatRoom.userStatus.keys];
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
    case DataModel.message:
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
    case DataModel.appNotification:
      return [];
    case DataModel.appNotificationState:
      return [];
    case DataModel.postModel:
      PostModel postModel = PostModel.fromJson(data);
      return [postModel.workPlaceId, ...postModel.selectedPositions];

    case DataModel.postComment:
      return [];
    case DataModel.timeOffRequest:
      TimeOffRequest timeOffRequest = TimeOffRequest.fromJson(data);
      if (timeOffRequest.endDate!
              .difference(timeOffRequest.startDate!)
              .inDays ==
          0) {
        return [
          timeOffRequest.startDate!.toIsoDateString,
          timeOffRequest.startDate!.year.toString(),
          timeOffRequest.startDate!.getMonthFormatFromDateTime,
        ];
      } else {
        List<String> dateDocIdFormats = [];
        List<String> years = [];
        List<String> months = [];

        dateDocIdFormats.addAll(
          DateHelpers.getAllDatesBetween(
            timeOffRequest.startDate!,
            timeOffRequest.endDate!,
          ),
        );
        years.addAll(
          DateHelpers.getFirstDaysOfYearsFilters(
            timeOffRequest.startDate!,
            timeOffRequest.endDate!,
          ),
        );

        months.addAll(
          DateHelpers.getFirstDaysOfMonthsFilters(
            timeOffRequest.startDate!,
            timeOffRequest.endDate!,
          ),
        );
        return [...dateDocIdFormats, ...years, ...months];
      }

    case DataModel.dailyScheduleSignOutReview:
      return [];

    case DataModel.userWorkPlaceRelation:
      return [];
    case DataModel.workHourCalculationHistory:
      return [];
    case DataModel.feedbackForm:
      return [];
    case DataModel.myPresetAvailability:
      return [];
    case DataModel.postStoredData:
      return [];
    case DataModel.userMessageReads:
      return [];
  }
}

T parseData<T>(DocumentSnapshot<Object?> doc) {
  Map<String, dynamic> data = {...doc.data() as Map<String, dynamic>};
  switch (T) {
    case const (AppInfo):
      return AppInfo.fromJson(data).copyWith() as T;
    case const (UserModel):
      return UserModel.fromJson(data).copyWith(id: doc.id) as T;
    case const (TempUserAvailabilities):
      return TempUserAvailabilities.fromJson(data).copyWith(id: doc.id) as T;
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

    case const (StoredData):
      return StoredData.fromJson(data).copyWith(id: doc.id) as T;
    case const (MessageModel):
      return MessageModel.fromJson(data).copyWith(id: doc.id) as T;
    case const (UserSchedule):
      return UserSchedule.fromJson(data).copyWith(id: doc.id) as T;
    case const (NotificationCenter):
      return NotificationCenter.fromJson(data).copyWith() as T;
    case const (AppNotification):
      return AppNotification.fromJson(data).copyWith(id: doc.id) as T;
    case const (AppNotificationState):
      return AppNotificationState.fromJson(data).copyWith() as T;
    case const (UserWorkPlaceInfo):
      return UserWorkPlaceInfo.fromJson(data).copyWith(id: doc.id) as T;
    case const (PostModel):
      return PostModel.fromJson(data).copyWith(id: doc.id) as T;
    case const (TimeOffRequest):
      return TimeOffRequest.fromJson(data).copyWith(id: doc.id) as T;
    case const (DailyScheduleSignOutReview):
      return DailyScheduleSignOutReview.fromJson(data).copyWith(id: doc.id)
          as T;
    case const (WorkHourCalculationHistory):
      return WorkHourCalculationHistory.fromJson(data).copyWith(id: doc.id)
          as T;

    case const (MyPresetAvailability):
      return MyPresetAvailability.fromJson(data).copyWith(id: doc.id) as T;
    case const (UserWorkPlaceRelation):
      return UserWorkPlaceRelation.fromJson(data).copyWith(id: doc.id) as T;
    case const (FeedbackForm):
      return FeedbackForm.fromJson(data).copyWith(id: doc.id) as T;
    case const (Map<String, dynamic>):
      return {'id': doc.id, ...data} as T;
    case const (UserMessageRead):
      return UserMessageRead.fromJson(data).copyWith(id: doc.id) as T;
    default:
      throw Exception('Unknown type');
  }
}
