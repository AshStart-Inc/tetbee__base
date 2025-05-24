import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_error.freezed.dart';
part 'http_error.g.dart';

@freezed
class HttpError with _$HttpError implements Exception {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HttpError({
    required String error,
    required int statusCode,
    required String description,
  }) = _HttpError;

  factory HttpError.fromJson(Map<String, dynamic> json) =>
      _$HttpErrorFromJson(json);
}
