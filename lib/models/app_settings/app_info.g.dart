// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppInfoImpl _$$AppInfoImplFromJson(Map<String, dynamic> json) =>
    _$AppInfoImpl(
      memberships:
          (json['memberships'] as List<dynamic>)
              .map((e) => Membership.fromJson(e as Map<String, dynamic>))
              .toList(),
      androidBannerId: json['androidBannerId'] as String?,
      iosBannerId: json['iosBannerId'] as String?,
      isCreateUserAllowed: json['isCreateUserAllowed'] as bool,
      isCreatePlaceAllowed: json['isCreatePlaceAllowed'] as bool,
      showAds: json['showAds'] as bool,
      versionCode: json['versionCode'] as String?,
      workPlaceType:
          (json['workPlaceType'] as List<dynamic>)
              .map((e) => WorkPlaceType.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$AppInfoImplToJson(_$AppInfoImpl instance) =>
    <String, dynamic>{
      'memberships': instance.memberships,
      'androidBannerId': instance.androidBannerId,
      'iosBannerId': instance.iosBannerId,
      'isCreateUserAllowed': instance.isCreateUserAllowed,
      'isCreatePlaceAllowed': instance.isCreatePlaceAllowed,
      'showAds': instance.showAds,
      'versionCode': instance.versionCode,
      'workPlaceType': instance.workPlaceType,
    };
