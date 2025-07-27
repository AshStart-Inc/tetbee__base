import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/chat/chat_room_user_status.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  @JsonSerializable(explicitToJson: true)
  const factory ChatRoom({
    String? id,
    required ChatType chatType,
    @Default('') String workPlaceId,
    @Default('') String name,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @Default([]) List<String> filters,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? latestMessageTime,
    String? latestMessageId,
    @Default({}) Map<String, ChatRoomUserStatus> userStatus,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}

String generateChatRoomId(String userA, String userB) {
  final sortedIds = [userA, userB]..sort();
  return '${sortedIds[0]}_${sortedIds[1]}';
}
