import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/address_model.dart';
import 'package:tetbee__base/models/common/phone_number_model.dart';

part 'emergency_contact.freezed.dart';
part 'emergency_contact.g.dart';

@freezed
class EmergnecyContact with _$EmergnecyContact {
  const factory EmergnecyContact({
    required String name,
    required String relation,
    required PhoneNumberModel phoneNumber,
    required AddressModel address,
  }) = _EmergnecyContact;

  factory EmergnecyContact.fromJson(Map<String, dynamic> json) =>
      _$EmergnecyContactFromJson(json);
}
