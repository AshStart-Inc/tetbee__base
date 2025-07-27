import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_place_type.freezed.dart';
part 'work_place_type.g.dart';

@freezed
class WorkPlaceType with _$WorkPlaceType {
  @JsonSerializable(explicitToJson: true)
  const factory WorkPlaceType({
    required String id,
    required String name,
    required int ordinal,
    // required IconModel iconModel,
  }) = _WorkPlaceType;

  factory WorkPlaceType.fromJson(Map<String, dynamic> json) =>
      _$WorkPlaceTypeFromJson(json);
}
