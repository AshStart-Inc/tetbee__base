import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/schedule/daily_schedule_sign_out_review/schedule_confirm_history.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'schedule_sign_out_confirm_model.freezed.dart';
part 'schedule_sign_out_confirm_model.g.dart';

@freezed
class ScheduleSignOutConfirmModel with _$ScheduleSignOutConfirmModel {
  @JsonSerializable(explicitToJson: true)
  const factory ScheduleSignOutConfirmModel({
    @Default('') String scheduleUserId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? scheduleDate,
    @Default([]) List<ScheduleConfirmHistory> confirmHistories,
  }) = _ScheduleSignOutConfirmModel;

  factory ScheduleSignOutConfirmModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSignOutConfirmModelFromJson(json);
}
