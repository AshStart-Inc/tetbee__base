import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
class PositionModel with _$PositionModel {
  const factory PositionModel({
    required String id,
    required bool isOwner,
    required String name,
    required int ordinal,
    @Default(false) bool managePlaceAccess,
    @Default(false) bool positionViewAccess,
    @Default(false) bool contactAccess,
    @Default(false) bool postingAccess,
    @Default(false) bool scheduleAccess,
    @Default(false) bool scheduleReviewAccess,
    @Default(false) bool userInfoUpdateAccess,
  }) = _PositionModel;

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);
}
