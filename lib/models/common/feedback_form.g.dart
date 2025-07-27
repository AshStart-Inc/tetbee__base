// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackFormImpl _$$FeedbackFormImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackFormImpl(
      id: json['id'] as String?,
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String? ?? '',
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      updatedBy: json['updatedBy'] as String? ?? '',
      status:
          $enumDecodeNullable(_$DocumentStatusEnumMap, json['status']) ??
          DocumentStatus.onSubmit,
      answers:
          (json['answers'] as List<dynamic>?)
              ?.map((e) => FeedbackModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FeedbackFormImplToJson(_$FeedbackFormImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
      'status': _$DocumentStatusEnumMap[instance.status]!,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

const _$DocumentStatusEnumMap = {
  DocumentStatus.onSubmit: 'onSubmit',
  DocumentStatus.onReview: 'onReview',
  DocumentStatus.onHold: 'onHold',
  DocumentStatus.onRejected: 'onRejected',
  DocumentStatus.onConfirmed: 'onConfirmed',
  DocumentStatus.onCancel: 'onCancel',
  DocumentStatus.onExpired: 'onExpired',
};

_$FeedbackModelImpl _$$FeedbackModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackModelImpl(
      label: json['label'] as String? ?? '',
      answer: json['answer'],
    );

Map<String, dynamic> _$$FeedbackModelImplToJson(_$FeedbackModelImpl instance) =>
    <String, dynamic>{'label': instance.label, 'answer': instance.answer};
