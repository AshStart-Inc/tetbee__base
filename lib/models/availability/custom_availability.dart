import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'custom_availability.freezed.dart';
part 'custom_availability.g.dart';

@freezed
class CustomAvailability with _$CustomAvailability {
  const factory CustomAvailability({
    required String id,
    required String userId,
    required String workPlaceId,
    @Default(false) bool isDefault,
    required String title,
    @Default(false) bool deleted,
    DateTime? createdAt,
    required String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    required String updatedBy,
    required List<DailyAvailability> dailyAvailability,
  }) = _CustomAvailability;

  factory CustomAvailability.fromJson(Map<String, dynamic> json) =>
      _$CustomAvailabilityFromJson(json);
}
