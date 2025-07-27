// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FAQModelImpl _$$FAQModelImplFromJson(Map<String, dynamic> json) =>
    _$FAQModelImpl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      info: json['info'] as String?,
      isoCode: json['isoCode'] as String?,
      postalCode: json['postalCode'] as String?,
      province: json['province'] as String?,
    );

Map<String, dynamic> _$$FAQModelImplToJson(_$FAQModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'info': instance.info,
      'isoCode': instance.isoCode,
      'postalCode': instance.postalCode,
      'province': instance.province,
    };
