// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembershipImpl _$$MembershipImplFromJson(Map<String, dynamic> json) =>
    _$MembershipImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      maximumPositions: (json['maximumPositions'] as num).toInt(),
      maximumStaffCapacity: (json['maximumStaffCapacity'] as num).toInt(),
      showAds: json['showAds'] as bool,
    );

Map<String, dynamic> _$$MembershipImplToJson(_$MembershipImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'maximumPositions': instance.maximumPositions,
      'maximumStaffCapacity': instance.maximumStaffCapacity,
      'showAds': instance.showAds,
    };
