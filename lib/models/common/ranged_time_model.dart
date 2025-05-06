import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'ranged_time_model.freezed.dart';
part 'ranged_time_model.g.dart';

@freezed
class RangedTimeModel with _$RangedTimeModel {
  const factory RangedTimeModel({
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endTime,
  }) = _RangedTimeModel;

  factory RangedTimeModel.fromJson(Map<String, dynamic> json) =>
      _$RangedTimeModelFromJson(json);
}
