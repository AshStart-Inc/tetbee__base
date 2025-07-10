// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_work_place_relation.freezed.dart';
part 'user_work_place_relation.g.dart';

@freezed
class UserWorkPlaceRelation with _$UserWorkPlaceRelation {
  @JsonSerializable(explicitToJson: true)
  const factory UserWorkPlaceRelation({
    String? id,
    required String workPlaceId,
    @Default(false) bool isActive,
    @Default(false) bool isSelected,
    String? removedReason,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? leftAt,
  }) = _UserWorkPlaceRelation;

  factory UserWorkPlaceRelation.fromJson(Map<String, dynamic> json) =>
      _$UserWorkPlaceRelationFromJson(json);
}
