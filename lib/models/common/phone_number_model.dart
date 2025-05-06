import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_model.freezed.dart';
part 'phone_number_model.g.dart';

@freezed
class PhoneNumberModel with _$PhoneNumberModel {
  const factory PhoneNumberModel({
    required String dialCode,
    required String isoCode,
    required String phoneNumber,
  }) = _PhoneNumberModel;

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);
}
