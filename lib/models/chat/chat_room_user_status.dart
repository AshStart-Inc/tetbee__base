import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'chat_room_user_status.freezed.dart';
part 'chat_room_user_status.g.dart';

@freezed
class ChatRoomUserStatus with _$ChatRoomUserStatus {
  const factory ChatRoomUserStatus({
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? lastReadAt,
    @Default(false) bool isInChatRoom,
  }) = _ChatRoomUserStatus;

  factory ChatRoomUserStatus.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomUserStatusFromJson(json);
}
