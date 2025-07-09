import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/updated_ranged_time_model.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'schedule_confirm_history.freezed.dart';
part 'schedule_confirm_history.g.dart';

@freezed
class ScheduleConfirmHistory with _$ScheduleConfirmHistory {
  @JsonSerializable(explicitToJson: true)
  const factory ScheduleConfirmHistory({
    String? dailyScheduleId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    String? comment,
    String? updatedReason,
    UpdatedRangedTimeModel? signOutTimeUpdateTimeLog,
    UpdatedRangedTimeModel? breakTimeUpdateTimeLog,
  }) = _ScheduleConfirmHistory;

  factory ScheduleConfirmHistory.fromJson(Map<String, dynamic> json) =>
      _$ScheduleConfirmHistoryFromJson(json);
}
