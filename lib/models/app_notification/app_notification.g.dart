// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
  Map<String, dynamic> json,
) => _$AppNotificationImpl(
  id: json['id'] as String?,
  recipentUserId: json['recipentUserId'] as String,
  readAt: Helpers.dateFromJson((json['readAt'] as num?)?.toInt()),
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  referenceDocumentPath: json['referenceDocumentPath'] as String?,
  notificationTopic: json['notificationTopic'] as String?,
  workPlaceId: json['workPlaceId'] as String?,
  title: json['title'] as String?,
  body: json['body'] as String?,
  type: $enumDecodeNullable(_$AppNotificationTypeEnumMap, json['type']),
  mediaData: (json['mediaData'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, StoredData.fromJson(e as Map<String, dynamic>)),
  ),
  didCompleteRequest: json['didCompleteRequest'] as bool? ?? false,
);

Map<String, dynamic> _$$AppNotificationImplToJson(
  _$AppNotificationImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'recipentUserId': instance.recipentUserId,
  'readAt': Helpers.dateToJson(instance.readAt),
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'referenceDocumentPath': instance.referenceDocumentPath,
  'notificationTopic': instance.notificationTopic,
  'workPlaceId': instance.workPlaceId,
  'title': instance.title,
  'body': instance.body,
  'type': _$AppNotificationTypeEnumMap[instance.type],
  'mediaData': instance.mediaData,
  'didCompleteRequest': instance.didCompleteRequest,
};

const _$AppNotificationTypeEnumMap = {
  AppNotificationType.postAnnounced: 'postAnnounced',
  AppNotificationType.postComment: 'postComment',
  AppNotificationType.likePostComment: 'likePostComment',
  AppNotificationType.postCommentReply: 'postCommentReply',
  AppNotificationType.confirmNotification: 'confirmNotification',
  AppNotificationType.availabilityReceiverOpen: 'availabilityReceiverOpen',
  AppNotificationType.availabilityReceiverClose: 'availabilityReceiverClose',
  AppNotificationType.availabilityReminder: 'availabilityReminder',
  AppNotificationType.scheduleRelease: 'scheduleRelease',
  AppNotificationType.scheduleUpdate: 'scheduleUpdate',
  AppNotificationType.joinRequest: 'joinRequest',
  AppNotificationType.joinRequestConfirmed: 'joinRequestConfirmed',
  AppNotificationType.joinRequestRejected: 'joinRequestRejected',
  AppNotificationType.userJoined: 'userJoined',
  AppNotificationType.userInfoUpdate: 'userInfoUpdate',
  AppNotificationType.userRemoved: 'userRemoved',
  AppNotificationType.timeOffRequestCreated: 'timeOffRequestCreated',
  AppNotificationType.timeOffRequestConfirm: 'timeOffRequestConfirm',
  AppNotificationType.timeOffRequestReject: 'timeOffRequestReject',
  AppNotificationType.tradeShiftCreated: 'tradeShiftCreated',
  AppNotificationType.tradeShiftConfirmed: 'tradeShiftConfirmed',
  AppNotificationType.tradeShiftRejected: 'tradeShiftRejected',
  AppNotificationType.createdNewUser: 'createdNewUser',
  AppNotificationType.createdNewPlace: 'createdNewPlace',
};
