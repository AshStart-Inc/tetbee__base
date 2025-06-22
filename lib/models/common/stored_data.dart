import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'stored_data.freezed.dart';
part 'stored_data.g.dart';

enum FilePurpose { userProfilePicture, placeProfilePicture }

@freezed
class StoredData with _$StoredData {
  const factory StoredData({
    String? id,
    int? ordinal,
    required String userId,
    FilePurpose? filePurpose,
    String? url,
    String? name,
    String? dataPath,
    @JsonKey(ignore: true) XFile? xFile,
    DataType? dataType,
    String? mimeType,
    int? size,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? uploadedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? expiredAt,
  }) = _StoredData;

  factory StoredData.fromJson(Map<String, dynamic> json) =>
      _$StoredDataFromJson(json);
}
