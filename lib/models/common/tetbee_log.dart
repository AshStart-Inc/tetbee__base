import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'tetbee_log.freezed.dart';
part 'tetbee_log.g.dart';

enum LogType {
  userCreated,
  placeCreated,
  userUpdated,
  userRemoved,
  scheduleCreated,
}

@freezed
class TetbeeLog with _$TetbeeLog {
  const factory TetbeeLog({
    String? id,
    required String dataPath,
    String? workPlaceId,
    String? userId,
    Map<String, dynamic>? dataSnapshot,
    String? deviceInfo,
    String? message,
    String? platform,
    String? appVersion,
    int? statusCode,
    required LogType logType,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
  }) = _TetbeeLog;

  factory TetbeeLog.fromJson(Map<String, dynamic> json) =>
      _$TetbeeLogFromJson(json);
}
