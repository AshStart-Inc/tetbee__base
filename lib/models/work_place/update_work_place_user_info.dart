import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/work_place/user_work_place_relation.dart';

part 'update_work_place_user_info.freezed.dart';
part 'update_work_place_user_info.g.dart';

@freezed
class UpdateWorkPlaceUserInfo with _$UpdateWorkPlaceUserInfo {
  @JsonSerializable(explicitToJson: true)
  const factory UpdateWorkPlaceUserInfo({
    required String currentUserId,
    required String userId,
    required bool wasOwner,
    required bool isOwner,
    required bool didPositionUpdated,
    required bool haveChatRoomAccess,
    required bool didHaveChatRoomAccess,
    required List<String> removedPosition,
    required UserWorkPlaceRelation updatedUserWorkPlace,
  }) = _UpdateWorkPlaceUserInfo;

  factory UpdateWorkPlaceUserInfo.fromJson(Map<String, dynamic> json) =>
      _$UpdateWorkPlaceUserInfoFromJson(json);
}
