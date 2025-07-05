import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/schedule/daily_schedule_sign_out_review/schedule_sign_out_confirm_model.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'daily_schedule_sign_out_review.freezed.dart';
part 'daily_schedule_sign_out_review.g.dart';

@freezed
class DailyScheduleSignOutReview with _$DailyScheduleSignOutReview {
  @JsonSerializable(explicitToJson: true)
  const factory DailyScheduleSignOutReview({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? confirmedAt,
    @Default('') String confirmedBy,
    @Default({}) Map<String, ScheduleSignOutConfirmModel> confirms,
  }) = _DailyScheduleSignOutReview;

  factory DailyScheduleSignOutReview.fromJson(Map<String, dynamic> json) =>
      _$DailyScheduleSignOutReviewFromJson(json);
}
