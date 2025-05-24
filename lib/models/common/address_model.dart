import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    String? address1,
    String? address2,
    String? city,
    String? isoCode,
    String? postalCode,
    String? province,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

extension AddressModelExtension on AddressModel {
  String get addressFormat {
    return address1 != null && address1!.isNotEmpty
        ? '$address1${address2 != null ? ' $address2' : ''}, $city, $province, ${postalCode?.substring(0, 3).toUpperCase()} ${postalCode?.substring(3)}'
        : 'Address is not updated.';
  }
}
