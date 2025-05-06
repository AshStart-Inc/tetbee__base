// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EmergnecyContact _$EmergnecyContactFromJson(Map<String, dynamic> json) {
  return _EmergnecyContact.fromJson(json);
}

/// @nodoc
mixin _$EmergnecyContact {
  String get name => throw _privateConstructorUsedError;
  String get relation => throw _privateConstructorUsedError;
  PhoneNumberModel get phoneNumber => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;

  /// Serializes this EmergnecyContact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmergnecyContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmergnecyContactCopyWith<EmergnecyContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergnecyContactCopyWith<$Res> {
  factory $EmergnecyContactCopyWith(
    EmergnecyContact value,
    $Res Function(EmergnecyContact) then,
  ) = _$EmergnecyContactCopyWithImpl<$Res, EmergnecyContact>;
  @useResult
  $Res call({
    String name,
    String relation,
    PhoneNumberModel phoneNumber,
    AddressModel address,
  });

  $PhoneNumberModelCopyWith<$Res> get phoneNumber;
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$EmergnecyContactCopyWithImpl<$Res, $Val extends EmergnecyContact>
    implements $EmergnecyContactCopyWith<$Res> {
  _$EmergnecyContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmergnecyContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relation = null,
    Object? phoneNumber = null,
    Object? address = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            relation:
                null == relation
                    ? _value.relation
                    : relation // ignore: cast_nullable_to_non_nullable
                        as String,
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as PhoneNumberModel,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as AddressModel,
          )
          as $Val,
    );
  }

  /// Create a copy of EmergnecyContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<$Res> get phoneNumber {
    return $PhoneNumberModelCopyWith<$Res>(_value.phoneNumber, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }

  /// Create a copy of EmergnecyContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmergnecyContactImplCopyWith<$Res>
    implements $EmergnecyContactCopyWith<$Res> {
  factory _$$EmergnecyContactImplCopyWith(
    _$EmergnecyContactImpl value,
    $Res Function(_$EmergnecyContactImpl) then,
  ) = __$$EmergnecyContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String relation,
    PhoneNumberModel phoneNumber,
    AddressModel address,
  });

  @override
  $PhoneNumberModelCopyWith<$Res> get phoneNumber;
  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$EmergnecyContactImplCopyWithImpl<$Res>
    extends _$EmergnecyContactCopyWithImpl<$Res, _$EmergnecyContactImpl>
    implements _$$EmergnecyContactImplCopyWith<$Res> {
  __$$EmergnecyContactImplCopyWithImpl(
    _$EmergnecyContactImpl _value,
    $Res Function(_$EmergnecyContactImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmergnecyContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relation = null,
    Object? phoneNumber = null,
    Object? address = null,
  }) {
    return _then(
      _$EmergnecyContactImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        relation:
            null == relation
                ? _value.relation
                : relation // ignore: cast_nullable_to_non_nullable
                    as String,
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as PhoneNumberModel,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as AddressModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergnecyContactImpl implements _EmergnecyContact {
  const _$EmergnecyContactImpl({
    required this.name,
    required this.relation,
    required this.phoneNumber,
    required this.address,
  });

  factory _$EmergnecyContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergnecyContactImplFromJson(json);

  @override
  final String name;
  @override
  final String relation;
  @override
  final PhoneNumberModel phoneNumber;
  @override
  final AddressModel address;

  @override
  String toString() {
    return 'EmergnecyContact(name: $name, relation: $relation, phoneNumber: $phoneNumber, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergnecyContactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, relation, phoneNumber, address);

  /// Create a copy of EmergnecyContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergnecyContactImplCopyWith<_$EmergnecyContactImpl> get copyWith =>
      __$$EmergnecyContactImplCopyWithImpl<_$EmergnecyContactImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergnecyContactImplToJson(this);
  }
}

abstract class _EmergnecyContact implements EmergnecyContact {
  const factory _EmergnecyContact({
    required final String name,
    required final String relation,
    required final PhoneNumberModel phoneNumber,
    required final AddressModel address,
  }) = _$EmergnecyContactImpl;

  factory _EmergnecyContact.fromJson(Map<String, dynamic> json) =
      _$EmergnecyContactImpl.fromJson;

  @override
  String get name;
  @override
  String get relation;
  @override
  PhoneNumberModel get phoneNumber;
  @override
  AddressModel get address;

  /// Create a copy of EmergnecyContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmergnecyContactImplCopyWith<_$EmergnecyContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
