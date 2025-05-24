import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/work_place/position_model.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'join_request.freezed.dart';
part 'join_request.g.dart';

@freezed
class JoinRequest with _$JoinRequest {
  @JsonSerializable(explicitToJson: true)
  const factory JoinRequest({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? readAt,
    required String userId,
    required String placeId,
    @Default(PositionModel(name: '', color: Colors.black))
    PositionModel position,
    @Default(false) bool isRejected,
    @Default(false) bool isDeleted,
    @Default(false) bool isCanceled,
    @Default([]) List<String> notificationPositionIds,
    @Default('') String comment,
    @Default('') String commentFromWorkPlace,
  }) = _JoinRequest;

  factory JoinRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinRequestFromJson(json);
}
