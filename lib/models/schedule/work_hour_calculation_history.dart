import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'work_hour_calculation_history.freezed.dart';
part 'work_hour_calculation_history.g.dart';

@freezed
class WorkHourCalculationHistory with _$WorkHourCalculationHistory {
  @JsonSerializable(explicitToJson: true)
  const factory WorkHourCalculationHistory({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    required RangedTimeModel dateRange,
    @JsonKey(
      toJson: Helpers.dateListToIsoJson,
      fromJson: Helpers.dateListFromStringJson,
    )
    List<DateTime>? holidays,
  }) = _WorkHourCalculationHistory;

  factory WorkHourCalculationHistory.fromJson(Map<String, dynamic> json) =>
      _$WorkHourCalculationHistoryFromJson(json);
}
