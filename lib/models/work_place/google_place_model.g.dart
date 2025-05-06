// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GooglePlaceModelImpl _$$GooglePlaceModelImplFromJson(
  Map<String, dynamic> json,
) => _$GooglePlaceModelImpl(
  address: json['address'] as String,
  countryCode: json['countryCode'] as String,
  latitude: json['latitude'] as String,
  longitude: json['longitude'] as String,
  name: json['name'] as String,
  googlePlaceId: json['googlePlaceId'] as String,
);

Map<String, dynamic> _$$GooglePlaceModelImplToJson(
  _$GooglePlaceModelImpl instance,
) => <String, dynamic>{
  'address': instance.address,
  'countryCode': instance.countryCode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'name': instance.name,
  'googlePlaceId': instance.googlePlaceId,
};
