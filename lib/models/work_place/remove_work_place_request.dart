import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_work_place_request.freezed.dart';
part 'remove_work_place_request.g.dart';

@freezed
class RemoveWorkPlaceRequest with _$RemoveWorkPlaceRequest {
  const factory RemoveWorkPlaceRequest({
    required String currentUserId,
    required String workPlaceId,
    required List<String> workPlacePositionIds,
  }) = _RemoveWorkPlaceRequest;

  factory RemoveWorkPlaceRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveWorkPlaceRequestFromJson(json);
}
