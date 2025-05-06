import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_place_model.freezed.dart';
part 'google_place_model.g.dart';

@freezed
class GooglePlaceModel with _$GooglePlaceModel {
  const factory GooglePlaceModel({
    required String address,
    required String countryCode,
    required String latitude,
    required String longitude,
    required String name,
    required String googlePlaceId,
  }) = _GooglePlaceModel;

  factory GooglePlaceModel.fromJson(Map<String, dynamic> json) =>
      _$GooglePlaceModelFromJson(json);
}
