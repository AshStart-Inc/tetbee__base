import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/form_manager/form_fields/media_picker/info_tag.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

PositionModel getAllPosition(String placeId) => PositionModel(
  id: placeId,
  isOwner: false,
  name: 'All',
  ordinal: -1,
  color: Color(0xFFF5C518),
);

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

extension PositionListExtension on List<PositionModel> {
  List<PositionModel> get managePlaceAccessPositions =>
      where((position) => position.managePlaceAccess).toList();
  List<PositionModel> get postingViewAccessPositions =>
      where((position) => position.postingViewAccess).toList();

  List<PositionModel> get postingAccessPositions =>
      where((position) => position.postingAccess).toList();

  List<PositionModel> get contactAccessPositions =>
      where((position) => position.contactAccess).toList();

  List<PositionModel> get scheduleAccessPositions =>
      where((position) => position.scheduleAccess).toList();

  List<PositionModel> get scheduleReviewAccessPositions =>
      where((position) => position.scheduleReviewAccess).toList();

  List<PositionModel> get userInfoUpdateAccessPositions =>
      where((position) => position.userInfoUpdateAccess).toList();

  List<PositionModel> get chatRoomAccessPositions =>
      where((position) => position.chatRoomAccess).toList();

  List<PositionModel> get dailyScheduleReviewPermissionPositions =>
      where((position) => position.dailyScheduleReviewPermission).toList();
}

Map<String, FormUnit> permissionFormField(
  BuildContext context, {
  bool isUserPermission = false,
}) => {
  'managePlaceAccess': FormUnit.boolean(
    headingWidget: InfomationTag(
      tooltipMode: true,
      text:
          'When this permission is enabled, users with this position can access and update place details, including place information, photos, and position management.',
    ),
    defaultValue: false,

    label: 'Can Access Place Information.',
  ), //done
  'dailyScheduleReviewPermission': FormUnit.boolean(
    headingWidget: InfomationTag(
      tooltipMode: true,
      text:
          'When this permission is enabled, users with this position can review staff sign-outs, confirm or edit them as needed.',
    ),
    defaultValue: false,
    label: 'Can Access Daily Schedule Review.',
  ), //done
  'postingAccess': FormUnit.boolean(
    headingWidget: InfomationTag(
      tooltipMode: true,
      text:
          'When this permission is enabled, users with this position can post announcements for staff members.',
    ),
    defaultValue: false,
    label: 'Can post announcements.',
  ), //done
  'postingViewAccess': FormUnit.boolean(
    headingWidget: InfomationTag(
      tooltipMode: true,
      text:
          'When this permission is enabled, users with this position will have access to all position postings, except those for the Admin position',
    ),
    defaultValue: false,
    label: 'Can access all of announcements',
  ),
  if (!isUserPermission)
    'chatRoomAccess': FormUnit.boolean(
      headingWidget: InfomationTag(
        tooltipMode: true,
        text:
            'When this permission is enabled, users with this position can access all group chat rooms for positions, except the Admin chat room',
      ),
      defaultValue: false,
      label: 'Can access all position\'s chat rooms.',
    ),
  // if (!isUserPermission)
  //   'scheduleReviewAccess': FormUnit.boolean(
  //     headingWidget: InfomationTag(tooltipMode: true, text: ''),
  //     defaultValue: false,
  //     label: 'Can access all Schedule Review.',
  //   ),
  'scheduleAccess': FormUnit.boolean(
    headingWidget: InfomationTag(
      tooltipMode: true,
      text:
          'When this permission is enabled, users with this position have the authority to create and edit schedules, manage availability, approve time-off and shift trade requests, and use schedule time calculation features.',
    ),
    defaultValue: false,
    label: 'Can make schedule.',
  ), //done
  'contactAccess': FormUnit.boolean(
    headingWidget: InfomationTag(
      tooltipMode: true,
      text:
          'When this permission is enabled, users with this position can view other staff members’ contact details, shift history, and time-off request history.',
    ),
    defaultValue: false,
    label: 'Can access other staff\'s contacts.',
  ), //done
  if (!isUserPermission)
    'userInfoUpdateAccess': FormUnit.boolean(
      headingWidget: InfomationTag(
        tooltipMode: true,
        text:
            'When this permission is enabled, users with this position can update other users’ information, including names and positions.',
      ),
      defaultValue: false,
      label: 'Can update other staff\'s position and nick name.',
    ), //done
};
