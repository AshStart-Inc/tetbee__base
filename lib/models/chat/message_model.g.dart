// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(
  Map<String, dynamic> json,
) => _$MessageModelImpl(
  id: json['id'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
  message: json['message'] as String? ?? '',
  senderUserId: json['senderUserId'] as String? ?? '',
  tagedUserId:
      (json['tagedUserId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  replyMessageId: json['replyMessageId'] as String? ?? '',
  filters:
      (json['filters'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  deleted: json['deleted'] as bool? ?? false,
  pined: json['pined'] as bool? ?? false,
  reactions:
      (json['reactions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$ReactionTypeEnumMap, e)),
      ) ??
      const {},
  mediaUrls:
      (json['mediaUrls'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, StoredData.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
);

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'messageType': _$MessageTypeEnumMap[instance.messageType]!,
      'message': instance.message,
      'senderUserId': instance.senderUserId,
      'tagedUserId': instance.tagedUserId,
      'replyMessageId': instance.replyMessageId,
      'filters': instance.filters,
      'deleted': instance.deleted,
      'pined': instance.pined,
      'reactions': instance.reactions.map(
        (k, e) => MapEntry(k, _$ReactionTypeEnumMap[e]!),
      ),
      'mediaUrls': instance.mediaUrls.map((k, e) => MapEntry(k, e.toJson())),
    };

const _$MessageTypeEnumMap = {
  MessageType.textMessage: 'textMessage',
  MessageType.imageMessage: 'imageMessage',
  MessageType.fileMessage: 'fileMessage',
  MessageType.videoMessage: 'videoMessage',
  MessageType.messageReaction: 'messageReaction',
  MessageType.tagMessage: 'tagMessage',
  MessageType.leavChatRoomMessage: 'leavChatRoomMessage',
  MessageType.replyMessage: 'replyMessage',
  MessageType.leaveChatRoomMessage: 'leaveChatRoomMessage',
};

const _$ReactionTypeEnumMap = {
  ReactionType.likes: 'likes',
  ReactionType.sadness: 'sadness',
  ReactionType.happiness: 'happiness',
  ReactionType.fear: 'fear',
  ReactionType.anger: 'anger',
  ReactionType.surprise: 'surprise',
  ReactionType.disgust: 'disgust',
  ReactionType.amazed: 'amazed',
};
