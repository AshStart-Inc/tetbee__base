// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_reminder_request.freezed.dart';
part 'availability_reminder_request.g.dart';

@freezed
class AvailabilityReminderRequest with _$AvailabilityReminderRequest {
  @JsonSerializable(explicitToJson: true)
  const factory AvailabilityReminderRequest({
    @Default([]) List<String> selectedUserList,
    required String sentUserId,
    required String placeId,
    required String availabilityReceiverId,
  }) = AAvailabilityReminderRequest;

  factory AvailabilityReminderRequest.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityReminderRequestFromJson(json);
}
