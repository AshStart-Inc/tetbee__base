// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/availability_receiver_setting.dart';
import 'package:tetbee__base/models/common/phone_number_model.dart';
import 'package:tetbee__base/models/common/time_zone_model.dart';
import 'package:tetbee__base/models/work_place/google_place_model.dart';
import 'package:tetbee__base/models/work_place/position_model.dart';
import 'package:tetbee__base/models/work_place/work_place_opening_time.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'work_place.freezed.dart';
part 'work_place.g.dart';

@freezed
class WorkPlace with _$WorkPlace {
  const factory WorkPlace({
    required String id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    required String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default(false) bool deleted,
    required String placeOwnerId,
    required String currentMembershipId,
    required int startWeekDay,
    required GooglePlaceModel googlePlaceModel,
    String? email1,
    String? email2,
    String? website,
    String? defaultProfilePictureUrl,
    @Default(false) isOpened,
    @Default(false) isVerified,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    required String workPlaceTypeId,
    required TimeZoneModel timeZone,
    required List<String> ownersIds,
    required Map<String, int> joinedUsersOrdinal,
    required List<PositionModel> positions,
    required List<WorkPlaceOpeningTime> openingTimes,
    required AvailabilityReceiverSetting availabilityReceiverDefaultSetting,
    List<WorkPlaceOpeningTime>? availabilityTimes,
  }) = _WorkPlace;

  factory WorkPlace.fromJson(Map<String, dynamic> json) =>
      _$WorkPlaceFromJson(json);
}
