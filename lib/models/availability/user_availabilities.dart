// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';
import 'package:tetbee__base/utils/enums.dart';
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
    @Default('') String updatedBy,
    required List<DailyAvailability> dailyAvailabilities,
    @Default('') String weekComment,
    int? weekDay,
    int? prefferedHours,
  }) = AUserAvailabilities;

  factory UserAvailabilities.fromJson(Map<String, dynamic> json) =>
      _$UserAvailabilitiesFromJson(json);
}

extension UserAvailabilitiesExtension on UserAvailabilities {
  DailyAvailability? getDailyAvailability(
    DateTime date,
    DateRangeType type,
    bool isTempUser,
  ) {
    List<DailyAvailability>? davs;
    switch (type) {
      case DateRangeType.multipleDates:
        davs =
            dailyAvailabilities
                .where(
                  (dav) =>
                      isTempUser
                          ? dav.weekDay == date.weekday
                          : dav.date?.toIsoDateString == date.toIsoDateString,
                )
                .toList();
      case DateRangeType.rangedDate:
        davs =
            dailyAvailabilities
                .where(
                  (dav) =>
                      isTempUser
                          ? dav.weekDay == date.weekday
                          : dav.weekDay == date.weekday,
                )
                .toList();
    }
    return davs.isEmpty ? null : davs.first;
  }
}
