// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_availability_submission_info.freezed.dart';
part 'user_availability_submission_info.g.dart';

@freezed
class UserAvailabilitySubmissionInfo with _$UserAvailabilitySubmissionInfo {
  const factory UserAvailabilitySubmissionInfo({
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? submissionTime,
  }) = AUserAvailabilitySubmissionInfo;

  factory UserAvailabilitySubmissionInfo.fromJson(Map<String, dynamic> json) =>
      _$UserAvailabilitySubmissionInfoFromJson(json);
}
