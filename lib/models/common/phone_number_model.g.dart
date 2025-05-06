// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhoneNumberModelImpl _$$PhoneNumberModelImplFromJson(
  Map<String, dynamic> json,
) => _$PhoneNumberModelImpl(
  dialCode: json['dialCode'] as String,
  isoCode: json['isoCode'] as String,
  phoneNumber: json['phoneNumber'] as String,
);

Map<String, dynamic> _$$PhoneNumberModelImplToJson(
  _$PhoneNumberModelImpl instance,
) => <String, dynamic>{
  'dialCode': instance.dialCode,
  'isoCode': instance.isoCode,
  'phoneNumber': instance.phoneNumber,
};
