import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

PositionModel getAllPosition(String placeId) =>
    PositionModel(id: placeId, isOwner: false, name: 'All', ordinal: -1);

@freezed
class PositionModel with _$PositionModel {
  const factory PositionModel({
    String? id,
    @Default(false) bool isOwner,
    required String name,
    @Default(0) int ordinal,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    Color? color,
    @Default(false) bool deleted,
    @Default(false) bool archived,
    @Default(false) bool managePlaceAccess,
    @Default(false) bool postingViewAccess,
    @Default(false) bool postingAccess,
    @Default(false) bool contactAccess,
    @Default(false) bool scheduleAccess,
    @Default(false) bool scheduleReviewAccess,
    @Default(false) bool userInfoUpdateAccess,
    @Default(false) bool chatRoomAccess,
    @Default(false) bool dailyScheduleReviewPermission,
  }) = _PositionModel;

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);
}

Map<String, FormUnit> permissionFormField({bool isUserPermission = false}) => {
  'managePlaceAccess': FormUnit.boolean(
    defaultValue: false,
    label: 'Can Access Place Information.',
  ), //done
  'dailyScheduleReviewPermission': FormUnit.boolean(
    defaultValue: false,
    label: 'Can Access Daily Schedule Review.',
  ), //done
  'postingAccess': FormUnit.boolean(
    defaultValue: false,
    label: 'Can post announcements.',
  ), //done
  'positionViewAccess': FormUnit.boolean(
    defaultValue: false,
    label: 'Can access all of announcements',
  ),
  if (!isUserPermission)
    'chatRoomAccess': FormUnit.boolean(
      defaultValue: false,
      label: 'Can access all position\'s chat rooms.',
    ),
  if (!isUserPermission)
    'scheduleReviewAccess': FormUnit.boolean(
      defaultValue: false,
      label: 'Can access all Schedule Review.',
    ),
  'scheduleAccess': FormUnit.boolean(
    defaultValue: false,
    label: 'Can make schedule.',
  ), //done
  'contactAccess': FormUnit.boolean(
    defaultValue: false,
    label: 'Can access other staff\'s contacts.',
  ), //done
  if (!isUserPermission)
    'userInfoUpdateAccess': FormUnit.boolean(
      defaultValue: false,
      label: 'Can update other staff\'s position and nick name.',
    ), //done
};
