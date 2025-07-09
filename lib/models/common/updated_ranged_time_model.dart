import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';

part 'updated_ranged_time_model.freezed.dart';
part 'updated_ranged_time_model.g.dart';

@freezed
class UpdatedRangedTimeModel with _$UpdatedRangedTimeModel {
  @JsonSerializable(explicitToJson: true)
  const factory UpdatedRangedTimeModel({
    RangedTimeModel? before,
    RangedTimeModel? after,
  }) = _UpdatedRangedTimeModel;

  factory UpdatedRangedTimeModel.fromJson(Map<String, dynamic> json) =>
      _$UpdatedRangedTimeModelFromJson(json);
}
