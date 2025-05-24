// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_availabilities.freezed.dart';
part 'user_availabilities.g.dart';

@freezed
class UserAvailabilities with _$UserAvailabilities {
  @JsonSerializable(explicitToJson: true)
  const factory UserAvailabilities({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    required List<DailyAvailability> dailyAvailability,
  }) = AUserAvailabilities;

  factory UserAvailabilities.fromJson(Map<String, dynamic> json) =>
      _$UserAvailabilitiesFromJson(json);
}
