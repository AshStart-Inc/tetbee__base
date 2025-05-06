// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'availability_receiver.freezed.dart';
part 'availability_receiver.g.dart';

@freezed
class AvailabilityReceiver with _$AvailabilityReceiver {
  const factory AvailabilityReceiver({
    required String id,
    required String workPlaceId,
    required String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    required String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    required String updatedBy,
    required List<String> userList,
    required bool isOpened,
    required String startDate,
  }) = AavailabilityReceiver;

  factory AvailabilityReceiver.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityReceiverFromJson(json);
}
