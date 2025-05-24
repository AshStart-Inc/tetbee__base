// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GooglePlaceModelImpl _$$GooglePlaceModelImplFromJson(
  Map<String, dynamic> json,
) => _$GooglePlaceModelImpl(
  googlePlaceId: json['googlePlaceId'] as String,
  name: json['name'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  description: json['description'] as String?,
);

Map<String, dynamic> _$$GooglePlaceModelImplToJson(
  _$GooglePlaceModelImpl instance,
) => <String, dynamic>{
  'googlePlaceId': instance.googlePlaceId,
  'name': instance.name,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'description': instance.description,
};
