// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stored_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoredDataImpl _$$StoredDataImplFromJson(Map<String, dynamic> json) =>
    _$StoredDataImpl(
      id: json['id'] as String?,
      ordinal: (json['ordinal'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      filePurpose: $enumDecodeNullable(
        _$FilePurposeEnumMap,
        json['filePurpose'],
      ),
      referencedDocumentId: json['referencedDocumentId'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      dataPath: json['dataPath'] as String?,
      dataType: $enumDecodeNullable(_$DataTypeEnumMap, json['dataType']),
      mimeType: json['mimeType'] as String?,
      size: (json['size'] as num?)?.toInt(),
      uploadedAt: Helpers.dateFromJson((json['uploadedAt'] as num?)?.toInt()),
      expiredAt: Helpers.dateFromJson((json['expiredAt'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$StoredDataImplToJson(_$StoredDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ordinal': instance.ordinal,
      'userId': instance.userId,
      'filePurpose': _$FilePurposeEnumMap[instance.filePurpose],
      'referencedDocumentId': instance.referencedDocumentId,
      'url': instance.url,
      'name': instance.name,
      'dataPath': instance.dataPath,
      'dataType': _$DataTypeEnumMap[instance.dataType],
      'mimeType': instance.mimeType,
      'size': instance.size,
      'uploadedAt': Helpers.dateToJson(instance.uploadedAt),
      'expiredAt': Helpers.dateToJson(instance.expiredAt),
    };

const _$FilePurposeEnumMap = {
  FilePurpose.userProfilePicture: 'userProfilePicture',
  FilePurpose.placeProfilePicture: 'placeProfilePicture',
  FilePurpose.postingFiles: 'postingFiles',
};

const _$DataTypeEnumMap = {
  DataType.img: 'img',
  DataType.video: 'video',
  DataType.pdf: 'pdf',
  DataType.doc: 'doc',
  DataType.link: 'link',
};
