// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: json['id'] as String?,
      isUploading: json['isUploading'] as bool? ?? false,
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String? ?? '',
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      updatedBy: json['updatedBy'] as String? ?? '',
      postTarget: $enumDecode(_$PostTargetEnumMap, json['postTarget']),
      postType: $enumDecode(_$PostTypeEnumMap, json['postType']),
      workPlaceId: json['workPlaceId'] as String,
      title: json['title'] as String,
      contents: json['contents'] as String,
      commentDisabled: json['commentDisabled'] as bool? ?? false,
      pined: json['pined'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
      notificationPositionIds:
          (json['notificationPositionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      selectedPositions:
          (json['selectedPositions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      views:
          (json['views'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      confirms:
          (json['confirms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      linkes:
          (json['linkes'] as List<dynamic>?)
              ?.map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      votingOptions:
          (json['votingOptions'] as List<dynamic>?)
              ?.map((e) => VotingOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      votingExpiresAt: Helpers.dateFromJson(
        (json['votingExpiresAt'] as num?)?.toInt(),
      ),
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isUploading': instance.isUploading,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
      'postTarget': _$PostTargetEnumMap[instance.postTarget]!,
      'postType': _$PostTypeEnumMap[instance.postType]!,
      'workPlaceId': instance.workPlaceId,
      'title': instance.title,
      'contents': instance.contents,
      'commentDisabled': instance.commentDisabled,
      'pined': instance.pined,
      'deleted': instance.deleted,
      'notificationPositionIds': instance.notificationPositionIds,
      'selectedPositions': instance.selectedPositions,
      'views': instance.views,
      'confirms': instance.confirms,
      'linkes': instance.linkes.map((e) => e.toJson()).toList(),
      'votingOptions': instance.votingOptions.map((e) => e.toJson()).toList(),
      'votingExpiresAt': Helpers.dateToJson(instance.votingExpiresAt),
    };

const _$PostTargetEnumMap = {
  PostTarget.public: 'public',
  PostTarget.workPlace: 'workPlace',
};

const _$PostTypeEnumMap = {PostType.basic: 'basic', PostType.voting: 'voting'};
