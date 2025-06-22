// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/availability_receiver_setting.dart';
import 'package:tetbee__base/models/common/address_model.dart';
import 'package:tetbee__base/models/common/phone_number_model.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/models/common/time_zone_model.dart';
import 'package:tetbee__base/models/work_place/google_place_model.dart';
import 'package:tetbee__base/models/work_place/position_model.dart';
import 'package:tetbee__base/models/work_place/user_work_place_ordinal.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'work_place.freezed.dart';
part 'work_place.g.dart';

@freezed
class WorkPlace with _$WorkPlace {
  @JsonSerializable(explicitToJson: true)
  const factory WorkPlace({
    String? id,
    @Default('') String name,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @Default([]) List<String> filters,
    @Default(false) bool deleted,
    @Default('') String placeOwnerId,
    @Default('') String currentMembershipId,
    @Default(false) bool useShiftSignOut,
    @Default(1) int startWeekDay,
    @Default(GooglePlaceModel(googlePlaceId: ''))
    GooglePlaceModel googlePlaceModel,
    @Default(AddressModel()) AddressModel? addressModel,
    String? email1,
    String? email2,
    String? website,
    String? defaultProfilePictureUrl,
    @Default(false) isOpened,
    @Default(false) isVerified,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    @Default('') String workPlaceTypeId,
    @Default(TimeZoneModel()) TimeZoneModel timeZone,
    // @Default([]) List<String> ownersIds,
    // @Default({}) Map<String, int> joinedUsersOrdinal,
    @Default([]) List<PositionModel> positions,
    @JsonKey(ignore: true) @Default([]) List<UserWorkPlaceOrdinal> ordinals,
    @Default(AvailabilityReceiverSetting())
    AvailabilityReceiverSetting availabilityReceiverDefaultSetting,
    // @Default([]) List<RangedTimeModel> openingTimes,
    // @Default([]) List<RangedTimeModel> availabilityTimes,
  }) = _WorkPlace;

  factory WorkPlace.fromJson(Map<String, dynamic> json) =>
      _$WorkPlaceFromJson(json);
}

extension WorkPlaceExtension on WorkPlace {
  bool get isPositionReady => positions.length >= 2;
  bool get isReadyToOpen => isPositionReady;
  List<PositionModel> sortedPositions({bool withOwner = true}) {
    List<PositionModel> p =
        withOwner
            ? [...positions]
            : [...positions.where((position) => !position.isOwner)];
    p.sort((a, b) => a.ordinal.compareTo(b.ordinal));
    return p;
  }

  String getOwnerId() {
    return positions.where((p) => p.isOwner).first.id!;
  }

  // List<String> getSortedUserIds({bool withOwner = true}) {
  //   final List<String> sortedUserIds =
  //       joinedUsersOrdinal.keys.toList()..sort(
  //         (a, b) => joinedUsersOrdinal[a]!.compareTo(joinedUsersOrdinal[b]!),
  //       );

  //   return withOwner
  //       ? sortedUserIds
  //       : sortedUserIds.where((id) => !ownersIds.contains(id)).toList();
  // }
}
