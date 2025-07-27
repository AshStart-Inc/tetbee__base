// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_message_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMessageReadImpl _$$UserMessageReadImplFromJson(
  Map<String, dynamic> json,
) => _$UserMessageReadImpl(
  id: json['id'] as String?,
  lastReads: Helpers.dateFromJson((json['lastReads'] as num?)?.toInt()),
  unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
  chatType: $enumDecode(_$ChatTypeEnumMap, json['chatType']),
);

Map<String, dynamic> _$$UserMessageReadImplToJson(
  _$UserMessageReadImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'lastReads': Helpers.dateToJson(instance.lastReads),
  'unreadCount': instance.unreadCount,
  'chatType': _$ChatTypeEnumMap[instance.chatType]!,
};

const _$ChatTypeEnumMap = {
  ChatType.public: 'public',
  ChatType.direct: 'direct',
  ChatType.group: 'group',
  ChatType.position: 'position',
  ChatType.place: 'place',
};
