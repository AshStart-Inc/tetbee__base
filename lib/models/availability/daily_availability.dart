import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';

part 'daily_availability.freezed.dart';
part 'daily_availability.g.dart';

@freezed
class DailyAvailability with _$DailyAvailability {
  const factory DailyAvailability({
    required String userId,
    required int weekDay,
    String? comment,
    @Default(false) bool? canWorkButNotPreferToWork,
    required RangedTimeModel time,
  }) = _DailyAvailability;

  factory DailyAvailability.fromJson(Map<String, dynamic> json) =>
      _$DailyAvailabilityFromJson(json);
}
