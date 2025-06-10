import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_place_permission.freezed.dart';
part 'user_place_permission.g.dart';

@freezed
class UserPlacePermission with _$UserPlacePermission {
  const factory UserPlacePermission({
    @Default(false) bool managePlaceAccess,
    @Default(false) bool postingViewAccess,
    @Default(false) bool contactAccess,
    @Default(false) bool postingAccess,
    @Default(false) bool scheduleAccess,
    @Default(false) bool scheduleReviewAccess,
    @Default(false) bool userInfoUpdateAccess,
    @Default(false) bool chatRoomAccess,
    @Default(false) bool dailyScheduleReviewPermission,
  }) = _UserPlacePermission;

  factory UserPlacePermission.fromJson(Map<String, dynamic> json) =>
      _$UserPlacePermissionFromJson(json);
}
