// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_user_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomUserStatusImpl _$$ChatRoomUserStatusImplFromJson(
  Map<String, dynamic> json,
) => _$ChatRoomUserStatusImpl(
  lastReadAt: Helpers.dateFromJson((json['lastReadAt'] as num?)?.toInt()),
  isInChatRoom: json['isInChatRoom'] as bool? ?? false,
);

Map<String, dynamic> _$$ChatRoomUserStatusImplToJson(
  _$ChatRoomUserStatusImpl instance,
) => <String, dynamic>{
  'lastReadAt': Helpers.dateToJson(instance.lastReadAt),
  'isInChatRoom': instance.isInChatRoom,
};
