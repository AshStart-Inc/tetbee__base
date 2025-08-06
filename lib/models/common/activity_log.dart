import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'activity_log.freezed.dart';
part 'activity_log.g.dart';

enum ActivityLogType { loginAttempt }

@freezed
class ActivityLog with _$ActivityLog {
  const factory ActivityLog({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    required ActivityLogType logType,
    String? description,
    String? error,
  }) = _ActivityLog;

  factory ActivityLog.fromJson(Map<String, dynamic> json) =>
      _$ActivityLogFromJson(json);
}
