import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'time_off_request.freezed.dart';
part 'time_off_request.g.dart';

@freezed
class TimeOffRequest with _$TimeOffRequest {
  @JsonSerializable(explicitToJson: true)
  const factory TimeOffRequest({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @Default(false) bool deleted,
    @Default(false) bool archived,
    @Default([]) List<String> filters,
    @Default([]) List<String> scheduleContainerFilter,
    @Default('') String description,
    @Default('') String rejectReason,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? endDate,
    @Default(DocumentStatus.onSubmit) DocumentStatus status,
    @Default([]) List<String> notificationPositionTarget,
  }) = _TimeOffRequest;

  factory TimeOffRequest.fromJson(Map<String, dynamic> json) =>
      _$TimeOffRequestFromJson(json);
}
