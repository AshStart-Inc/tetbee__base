// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_availability_submission_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AUserAvailabilitySubmissionInfoImpl
_$$AUserAvailabilitySubmissionInfoImplFromJson(Map<String, dynamic> json) =>
    _$AUserAvailabilitySubmissionInfoImpl(
      submissionTime: Helpers.dateFromJson(
        (json['submissionTime'] as num?)?.toInt(),
      ),
    );

Map<String, dynamic> _$$AUserAvailabilitySubmissionInfoImplToJson(
  _$AUserAvailabilitySubmissionInfoImpl instance,
) => <String, dynamic>{
  'submissionTime': Helpers.dateToJson(instance.submissionTime),
};
