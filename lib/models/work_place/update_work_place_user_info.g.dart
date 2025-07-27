// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_work_place_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateWorkPlaceUserInfoImpl _$$UpdateWorkPlaceUserInfoImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateWorkPlaceUserInfoImpl(
  currentUserId: json['currentUserId'] as String,
  userId: json['userId'] as String,
  workPlaceId: json['workPlaceId'] as String,
  wasOwner: json['wasOwner'] as bool,
  isTempUser: json['isTempUser'] as bool,
  isOwner: json['isOwner'] as bool,
  didPositionUpdated: json['didPositionUpdated'] as bool,
  haveChatRoomAccess: json['haveChatRoomAccess'] as bool,
  didHaveChatRoomAccess: json['didHaveChatRoomAccess'] as bool,
  removedPosition:
      (json['removedPosition'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  workPlacePositions:
      (json['workPlacePositions'] as List<dynamic>)
          .map((e) => PositionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  updatedUserWorkPlaceInfo: UserWorkPlaceInfo.fromJson(
    json['updatedUserWorkPlaceInfo'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$UpdateWorkPlaceUserInfoImplToJson(
  _$UpdateWorkPlaceUserInfoImpl instance,
) => <String, dynamic>{
  'currentUserId': instance.currentUserId,
  'userId': instance.userId,
  'workPlaceId': instance.workPlaceId,
  'wasOwner': instance.wasOwner,
  'isTempUser': instance.isTempUser,
  'isOwner': instance.isOwner,
  'didPositionUpdated': instance.didPositionUpdated,
  'haveChatRoomAccess': instance.haveChatRoomAccess,
  'didHaveChatRoomAccess': instance.didHaveChatRoomAccess,
  'removedPosition': instance.removedPosition,
  'workPlacePositions':
      instance.workPlacePositions.map((e) => e.toJson()).toList(),
  'updatedUserWorkPlaceInfo': instance.updatedUserWorkPlaceInfo.toJson(),
};
