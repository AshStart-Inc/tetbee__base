// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_user_form_work_place_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveUserFormWorkPlaceRequestImpl
_$$RemoveUserFormWorkPlaceRequestImplFromJson(Map<String, dynamic> json) =>
    _$RemoveUserFormWorkPlaceRequestImpl(
      userId: json['userId'] as String,
      isTempUser: json['isTempUser'] as bool,
      currentUserId: json['currentUserId'] as String,
      workPlaceId: json['workPlaceId'] as String,
      updatedUserWorkPlaceRelation: UserWorkPlaceRelation.fromJson(
        json['updatedUserWorkPlaceRelation'] as Map<String, dynamic>,
      ),
      notificationPositionIds:
          (json['notificationPositionIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$RemoveUserFormWorkPlaceRequestImplToJson(
  _$RemoveUserFormWorkPlaceRequestImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'isTempUser': instance.isTempUser,
  'currentUserId': instance.currentUserId,
  'workPlaceId': instance.workPlaceId,
  'updatedUserWorkPlaceRelation':
      instance.updatedUserWorkPlaceRelation.toJson(),
  'notificationPositionIds': instance.notificationPositionIds,
};
