// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomImpl _$$ChatRoomImplFromJson(
  Map<String, dynamic> json,
) => _$ChatRoomImpl(
  id: json['id'] as String?,
  chatType: $enumDecode(_$ChatTypeEnumMap, json['chatType']),
  workPlaceId: json['workPlaceId'] as String? ?? '',
  name: json['name'] as String? ?? '',
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  filters:
      (json['filters'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  latestMessageTime: Helpers.dateFromJson(
    (json['latestMessageTime'] as num?)?.toInt(),
  ),
  latestMessageId: json['latestMessageId'] as String?,
  userStatus:
      (json['userStatus'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ChatRoomUserStatus.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
);

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatType': _$ChatTypeEnumMap[instance.chatType]!,
      'workPlaceId': instance.workPlaceId,
      'name': instance.name,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
      'filters': instance.filters,
      'latestMessageTime': Helpers.dateToJson(instance.latestMessageTime),
      'latestMessageId': instance.latestMessageId,
      'userStatus': instance.userStatus.map((k, e) => MapEntry(k, e.toJson())),
    };

const _$ChatTypeEnumMap = {
  ChatType.public: 'public',
  ChatType.direct: 'direct',
  ChatType.group: 'group',
  ChatType.position: 'position',
  ChatType.place: 'place',
};
