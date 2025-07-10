// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/work_place/user_place_permission.dart';

import 'package:tetbee__base/tetbee__base.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String? updatedBy,
    @Default([]) List<String> filters,
    @Default(false) bool deleted,
    @Default(false) bool didWatchOnboarding,
    @Default(false) bool didRateApp,
    @Default(false) bool isTempUser,
    @Default('') String firstName,
    @Default('') String middleName,
    @Default('') String lastName,
    required String nickName,
    @Default(true) bool preferShowNickName,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    EmergnecyContact? emergencyContact,
    AddressModel? addressModel,
    @Default(Gender.male) Gender gender,
    String? defaultProfilePictureUrl,
    String? email,
    String? dateOfBirth,
    @JsonKey(ignore: true)
    @Default({})
    Map<String, UserWorkPlaceRelation> userWorkPlaceRelation,
    required UserSettings userSettings,
    @JsonKey(ignore: true) UserWorkPlaceInfo? userWorkPlaceInfo,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelExtension on UserModel {
  bool get show24Format => userSettings.timeFormat == TimeFormat.militartFormat;
  String getPlaceNickName(String? placeId) {
    if (placeId == null) return nickName;
    String workPlaceNickName = userWorkPlaceInfo?.workPlaceNickName ?? '';
    return workPlaceNickName.isNotEmpty ? workPlaceNickName : nickName;
  }

  bool isJoinedThisPlace(String placeId) {
    return userWorkPlaceRelation[placeId] != null &&
        userWorkPlaceRelation[placeId]!.isActive;
  }

  String? getJoinedPlace() {
    List<UserWorkPlaceRelation> relation =
        userWorkPlaceRelation.values
            .where(
              (UserWorkPlaceRelation userWorkplace) =>
                  userWorkplace.isActive && userWorkplace.isSelected,
            )
            .toList();
    return relation.isEmpty ? null : relation.first.workPlaceId;
  }

  List<PositionModel> userPositions(WorkPlace placeModel) {
    List<PositionModel> p =
        placeModel.positions
            .where(
              (position) => userWorkPlaceInfo!.positions.contains(position.id),
            )
            .toList();
    p.sort((a, b) => a.ordinal.compareTo(b.ordinal));
    return p;
  }

  UserWorkPlaceRelation? getUserWorkPlaceRelation(String placeId) {
    return userWorkPlaceRelation[placeId];
  }

  //permissions
  UserPlacePermission userPlacePermission(WorkPlace workPlace) {
    return userWorkPlaceInfo?.userPlacePermission ??
        UserPlacePermission(
          dailyScheduleReviewPermission: dailyScheduleReviewPermission(
            workPlace,
          ),
          managePlaceAccess: managePlaceAccess(workPlace),
          postingViewAccess: postingView(workPlace),
          contactAccess: contactAccess(workPlace),
          postingAccess: postingAccess(workPlace),
          scheduleAccess: scheduleAccess(workPlace),
          scheduleReviewAccess: scheduleReviewAccess(workPlace),
          userInfoUpdateAccess: userInfoUpdateAccess(workPlace),
          chatRoomAccess: chatRoomAccess(workPlace),
        );
  }

  bool managePlaceAccess(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;

    return permission?.managePlaceAccess ??
        userPositions(workPlace).any((p) => p.managePlaceAccess);
  }

  bool dailyScheduleReviewPermission(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.dailyScheduleReviewPermission ??
        userPositions(workPlace).any((p) => p.dailyScheduleReviewPermission);
  }

  bool postingView(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.postingViewAccess ??
        userPositions(workPlace).any((p) => p.postingAccess);
  }

  bool contactAccess(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.contactAccess ??
        userPositions(workPlace).any((p) => p.contactAccess);
  }

  bool postingAccess(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.postingAccess ??
        userPositions(workPlace).any((p) => p.postingAccess);
  }

  bool scheduleAccess(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.scheduleAccess ??
        userPositions(workPlace).any((p) => p.scheduleAccess);
  }

  bool scheduleReviewAccess(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.scheduleReviewAccess ??
        userPositions(workPlace).any((p) => p.scheduleReviewAccess);
  }

  bool userInfoUpdateAccess(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.userInfoUpdateAccess ??
        userPositions(workPlace).any((p) => p.userInfoUpdateAccess);
  }

  bool chatRoomAccess(WorkPlace workPlace) {
    final permission = userWorkPlaceInfo?.userPlacePermission;
    return permission?.chatRoomAccess ??
        userPositions(workPlace).any((p) => p.chatRoomAccess);
  }
}

extension UserModelListExtension on List<UserModel> {
  List<UserModel> getPositionUserList(String workPlaceId, String positionId) {
    return where(
      (userModel) =>
          userModel.userWorkPlaceInfo!.positions.contains(positionId),
    ).toList();
  }
}
