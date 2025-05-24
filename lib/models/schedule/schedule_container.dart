import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/schedule/schedule_selected_user.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'schedule_container.freezed.dart';
part 'schedule_container.g.dart';

@freezed
class ScheduleContainer with _$ScheduleContainer {
  const factory ScheduleContainer({
    required int ordinal,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startDate,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endDate,
    @Default({}) Map<int, String> selectedAvailabilityReceiverIds,
    @Default({}) Map<String, ScheduleSelectedUser> selectedUserList,
  }) = _ScheduleContainer;

  factory ScheduleContainer.fromJson(Map<String, dynamic> json) =>
      _$ScheduleContainerFromJson(json);
}
