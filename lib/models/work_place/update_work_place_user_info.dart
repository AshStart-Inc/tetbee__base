import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/tetbee__base.dart';

part 'update_work_place_user_info.freezed.dart';
part 'update_work_place_user_info.g.dart';

@freezed
class UpdateWorkPlaceUserInfo with _$UpdateWorkPlaceUserInfo {
  @JsonSerializable(explicitToJson: true)
  const factory UpdateWorkPlaceUserInfo({
    required String currentUserId,
    required String userId,
    required String workPlaceId,
    required bool wasOwner,
    required bool isTempUser,
    required bool isOwner,
    required bool didPositionUpdated,
    required bool haveChatRoomAccess,
    required bool didHaveChatRoomAccess,
    required List<String> removedPosition,
    required List<PositionModel> workPlacePositions,
    required UserWorkPlaceInfo updatedUserWorkPlaceInfo,
  }) = _UpdateWorkPlaceUserInfo;

  factory UpdateWorkPlaceUserInfo.fromJson(Map<String, dynamic> json) =>
      _$UpdateWorkPlaceUserInfoFromJson(json);
}
