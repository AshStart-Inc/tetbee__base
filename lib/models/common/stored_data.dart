import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tetbee__base/utils/enums.dart';

part 'stored_data.freezed.dart';
part 'stored_data.g.dart';

@freezed
class StoredData with _$StoredData {
  const factory StoredData({
    String? url,
    String? name,
    String? dataPath,
    @JsonKey(ignore: true) XFile? xFile,
    DataType? dataType,
  }) = _StoredData;

  factory StoredData.fromJson(Map<String, dynamic> json) =>
      _$StoredDataFromJson(json);
}
