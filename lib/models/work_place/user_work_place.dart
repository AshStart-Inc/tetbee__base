// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_work_place.freezed.dart';
part 'user_work_place.g.dart';

@freezed
class UserWorkPlace with _$UserWorkPlace {
  const factory UserWorkPlace({
    required String workPlaceId,
    required String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? leftAt,
  }) = _UserWorkPlace;

  factory UserWorkPlace.fromJson(Map<String, dynamic> json) =>
      _$UserWorkPlaceFromJson(json);
}
