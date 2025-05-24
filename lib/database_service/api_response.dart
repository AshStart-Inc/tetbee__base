import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/database_service/response.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true, toStringOverride: true)
class ApiResponse<T> with _$ApiResponse<T> implements DataResponse<T> {
  @JsonSerializable(genericArgumentFactories: true, createToJson: true)
  const factory ApiResponse({T? data, String? message, int? statusCode}) =
      _ApiResponse<T>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ApiResponseFromJson(json, fromJsonT);
}
