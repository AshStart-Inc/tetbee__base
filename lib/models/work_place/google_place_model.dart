import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_place_model.freezed.dart';
part 'google_place_model.g.dart';

@freezed
class GooglePlaceModel with _$GooglePlaceModel {
  const factory GooglePlaceModel({
    required String googlePlaceId,
    String? name,
    double? latitude,
    double? longitude,
    String? description,
  }) = _GooglePlaceModel;

  factory GooglePlaceModel.fromJson(Map<String, dynamic> json) =>
      _$GooglePlaceModelFromJson(json);
}
