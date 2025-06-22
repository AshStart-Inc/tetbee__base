import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_work_place_ordinal.freezed.dart';
part 'user_work_place_ordinal.g.dart';

@freezed
class UserWorkPlaceOrdinal with _$UserWorkPlaceOrdinal {
  const factory UserWorkPlaceOrdinal({
    @JsonKey(ignore: true) @Default('') String id,
    required int ordinal,
  }) = _UserWorkPlaceOrdinal;

  factory UserWorkPlaceOrdinal.fromJson(Map<String, dynamic> json) =>
      _$UserWorkPlaceOrdinalFromJson(json);
}
