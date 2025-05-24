// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/work_place/user_place_permission.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_work_place_relation.freezed.dart';
part 'user_work_place_relation.g.dart';

@freezed
class UserWorkPlaceRelation with _$UserWorkPlaceRelation {
  @JsonSerializable(explicitToJson: true)
  const factory UserWorkPlaceRelation({
    required String workPlaceId,
    @Default(false) bool isActive,
    //checking if the user is joined place or not
    @Default(false) bool isSelected,
    required String workPlaceNickName,

    @Default(WorkingStatus.fullTime) WorkingStatus workingStatus,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? leftAt,
    String? removedReason,
    @Default([]) List<String> positions,
    UserPlacePermission? userPlacePermission,
  }) = _UserWorkPlaceRelation;

  factory UserWorkPlaceRelation.fromJson(Map<String, dynamic> json) =>
      _$UserWorkPlaceRelationFromJson(json);
}
