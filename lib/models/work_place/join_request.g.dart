// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinRequestImpl _$$JoinRequestImplFromJson(Map<String, dynamic> json) =>
    _$JoinRequestImpl(
      id: json['id'] as String?,
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String? ?? '',
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      readAt: Helpers.dateFromJson((json['readAt'] as num?)?.toInt()),
      userId: json['userId'] as String,
      placeId: json['placeId'] as String,
      acceptedUserId: json['acceptedUserId'] as String?,
      position:
          json['position'] == null
              ? const PositionModel(name: '', color: Colors.black)
              : PositionModel.fromJson(
                json['position'] as Map<String, dynamic>,
              ),
      isRejected: json['isRejected'] as bool? ?? false,
      isConfirmed: json['isConfirmed'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      isCanceled: json['isCanceled'] as bool? ?? false,
      notificationPositionIds:
          (json['notificationPositionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      comment: json['comment'] as String? ?? '',
      commentFromWorkPlace: json['commentFromWorkPlace'] as String? ?? '',
    );

Map<String, dynamic> _$$JoinRequestImplToJson(_$JoinRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'readAt': Helpers.dateToJson(instance.readAt),
      'userId': instance.userId,
      'placeId': instance.placeId,
      'acceptedUserId': instance.acceptedUserId,
      'position': instance.position.toJson(),
      'isRejected': instance.isRejected,
      'isConfirmed': instance.isConfirmed,
      'isDeleted': instance.isDeleted,
      'isCanceled': instance.isCanceled,
      'notificationPositionIds': instance.notificationPositionIds,
      'comment': instance.comment,
      'commentFromWorkPlace': instance.commentFromWorkPlace,
    };
