// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/data_services/availability/domain/service/availability_service.dart';
import 'package:tetbee__base/models/availability/availability_receiver_setting.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';
import 'package:tetbee__base/models/availability/user_availability_submission_info.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'availability_receiver.freezed.dart';
part 'availability_receiver.g.dart';

@freezed
class AvailabilityReceiver with _$AvailabilityReceiver {
  @JsonSerializable(explicitToJson: true)
  const factory AvailabilityReceiver({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String title,
    @Default('') String description,
    @Default(false) bool deleted,
    @Default('') String updatedBy,
    @Default(false) bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    @Default([])
    List<DateTime> dateTimes,
    @Default([]) List<String> selectedUserList,
    @Default({}) Map<String, UserAvailabilitySubmissionInfo> userSubmissionInfo,
    @Default(AvailabilityReceiverSetting())
    AvailabilityReceiverSetting availabilityReceiverSetting,
  }) = AavailabilityReceiver;

  factory AvailabilityReceiver.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityReceiverFromJson(json);
}

extension AvailabilityReceiverExtension on AvailabilityReceiver {
  DateRangeType get type => availabilityReceiverSetting.type;
  bool get showNotPreferedDayChecker =>
      availabilityReceiverSetting.showNotPreferedDayChecker;
  bool get useDailyComment => availabilityReceiverSetting.useDailyComment;
  TimeInterval get timeInterval => availabilityReceiverSetting.timeInterval;
  List<DailyAvailability> get dailyAvailabilityTimeRange =>
      availabilityReceiverSetting.dailyAvailabilityTimeRange;
  bool get isOneWeek => dateTimes.last.difference(dateTimes.first).inDays == 6;

  List<DateTime> getDates() {
    late List<DateTime> dates;
    switch (type) {
      case DateRangeType.rangedDate:
        if (isOneWeek) {
          dates = [
            for (DateTime date in AvailabilityService.baseWeek)
              dateTimes.first.add(Duration(days: date.weekday - 1)),
          ];
        } else {
          dates = AvailabilityService.baseWeek;
        }

      case DateRangeType.multipleDates:
        dates = dateTimes;
    }
    return dates;
  }

  bool showDate() {
    late bool showDate;
    switch (type) {
      case DateRangeType.rangedDate:
        if (isOneWeek) {
          showDate = true;
        } else {
          showDate = false;
        }

      case DateRangeType.multipleDates:
        showDate = true;
    }
    return showDate;
  }

  String getTypeText() {
    switch (type) {
      case DateRangeType.multipleDates:
        return 'Multiple Dates';
      case DateRangeType.rangedDate:
        return 'Weeks';
    }
  }

  bool didSendAv(String userId) => userSubmissionInfo.containsKey(userId);
}
