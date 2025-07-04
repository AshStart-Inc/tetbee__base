import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/data_services/availability/domain/service/availability_service.dart';
import 'package:tetbee__base/models/schedule/selected_user.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'schedule_container.freezed.dart';
part 'schedule_container.g.dart';

@freezed
class ScheduleContainer with _$ScheduleContainer {
  @JsonSerializable(explicitToJson: true)
  const factory ScheduleContainer({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? endDate,
    @Default({}) Map<int, String> selectedAvailabilityReceiverIds,
    @Default({}) Map<String, SelectedUser> selectedUserList,
    @Default(false) bool isReleased,
    @Default(false) bool deleted,
  }) = _ScheduleContainer;

  factory ScheduleContainer.fromJson(Map<String, dynamic> json) =>
      _$ScheduleContainerFromJson(json);
}

extension ScheduleContainerExtension on ScheduleContainer {
  List<DateTime> getDates() {
    return [
      for (DateTime date in AvailabilityService.baseWeek)
        startDate!.add(Duration(days: date.weekday - 1)),
    ];
  }
}
