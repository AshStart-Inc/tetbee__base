// // ignore_for_file: invalid_annotation_target

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:tetbee__base/utils/helper.dart';

// part 'work_place_opening_time.freezed.dart';
// part 'work_place_opening_time.g.dart';

// @freezed
// class WorkPlaceOpeningTime with _$WorkPlaceOpeningTime {
//   const factory WorkPlaceOpeningTime({
//     required int weekDay,
//     @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
//     DateTime? startTime,
//     @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
//     DateTime? endTime,
//   }) = _WorkPlaceOpeningTime;

//   factory WorkPlaceOpeningTime.fromJson(Map<String, dynamic> json) =>
//       _$WorkPlaceOpeningTimeFromJson(json);
// }
