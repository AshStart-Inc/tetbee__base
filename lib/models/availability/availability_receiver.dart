// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
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
    @Default(false) bool deleted,
    @Default([]) List<String> excludedUserList,
    @Default('') String updatedBy,
    @Default(false) bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    @Default([])
    List<DateTime> dateTimes,
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
  int get timeInterval => availabilityReceiverSetting.timeInterval;
  List<DailyAvailability> get dailyAvailabilityTimeRange =>
      availabilityReceiverSetting.dailyAvailabilityTimeRange;
}
