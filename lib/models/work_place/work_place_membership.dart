// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'work_place_membership.freezed.dart';
part 'work_place_membership.g.dart';

@freezed
class WorkPlaceMembership with _$WorkPlaceMembership {
  const factory WorkPlaceMembership({
    required String id,
    required String workPlaceId,
    required String membershipId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    required String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startsAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endsAt,
    @Default(false) isActive,
  }) = _WorkPlaceMembership;

  factory WorkPlaceMembership.fromJson(Map<String, dynamic> json) =>
      _$WorkPlaceMembershipFromJson(json);
}
