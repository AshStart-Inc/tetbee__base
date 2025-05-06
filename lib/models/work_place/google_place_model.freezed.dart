// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GooglePlaceModel _$GooglePlaceModelFromJson(Map<String, dynamic> json) {
  return _GooglePlaceModel.fromJson(json);
}

/// @nodoc
mixin _$GooglePlaceModel {
  String get address => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get googlePlaceId => throw _privateConstructorUsedError;

  /// Serializes this GooglePlaceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GooglePlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GooglePlaceModelCopyWith<GooglePlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GooglePlaceModelCopyWith<$Res> {
  factory $GooglePlaceModelCopyWith(
    GooglePlaceModel value,
    $Res Function(GooglePlaceModel) then,
  ) = _$GooglePlaceModelCopyWithImpl<$Res, GooglePlaceModel>;
  @useResult
  $Res call({
    String address,
    String countryCode,
    String latitude,
    String longitude,
    String name,
    String googlePlaceId,
  });
}

/// @nodoc
class _$GooglePlaceModelCopyWithImpl<$Res, $Val extends GooglePlaceModel>
    implements $GooglePlaceModelCopyWith<$Res> {
  _$GooglePlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GooglePlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? countryCode = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? name = null,
    Object? googlePlaceId = null,
  }) {
    return _then(
      _value.copyWith(
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            countryCode:
                null == countryCode
                    ? _value.countryCode
                    : countryCode // ignore: cast_nullable_to_non_nullable
                        as String,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as String,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            googlePlaceId:
                null == googlePlaceId
                    ? _value.googlePlaceId
                    : googlePlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GooglePlaceModelImplCopyWith<$Res>
    implements $GooglePlaceModelCopyWith<$Res> {
  factory _$$GooglePlaceModelImplCopyWith(
    _$GooglePlaceModelImpl value,
    $Res Function(_$GooglePlaceModelImpl) then,
  ) = __$$GooglePlaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String address,
    String countryCode,
    String latitude,
    String longitude,
    String name,
    String googlePlaceId,
  });
}

/// @nodoc
class __$$GooglePlaceModelImplCopyWithImpl<$Res>
    extends _$GooglePlaceModelCopyWithImpl<$Res, _$GooglePlaceModelImpl>
    implements _$$GooglePlaceModelImplCopyWith<$Res> {
  __$$GooglePlaceModelImplCopyWithImpl(
    _$GooglePlaceModelImpl _value,
    $Res Function(_$GooglePlaceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GooglePlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? countryCode = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? name = null,
    Object? googlePlaceId = null,
  }) {
    return _then(
      _$GooglePlaceModelImpl(
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        countryCode:
            null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as String,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        googlePlaceId:
            null == googlePlaceId
                ? _value.googlePlaceId
                : googlePlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GooglePlaceModelImpl implements _GooglePlaceModel {
  const _$GooglePlaceModelImpl({
    required this.address,
    required this.countryCode,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.googlePlaceId,
  });

  factory _$GooglePlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GooglePlaceModelImplFromJson(json);

  @override
  final String address;
  @override
  final String countryCode;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String name;
  @override
  final String googlePlaceId;

  @override
  String toString() {
    return 'GooglePlaceModel(address: $address, countryCode: $countryCode, latitude: $latitude, longitude: $longitude, name: $name, googlePlaceId: $googlePlaceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GooglePlaceModelImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    address,
    countryCode,
    latitude,
    longitude,
    name,
    googlePlaceId,
  );

  /// Create a copy of GooglePlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GooglePlaceModelImplCopyWith<_$GooglePlaceModelImpl> get copyWith =>
      __$$GooglePlaceModelImplCopyWithImpl<_$GooglePlaceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GooglePlaceModelImplToJson(this);
  }
}

abstract class _GooglePlaceModel implements GooglePlaceModel {
  const factory _GooglePlaceModel({
    required final String address,
    required final String countryCode,
    required final String latitude,
    required final String longitude,
    required final String name,
    required final String googlePlaceId,
  }) = _$GooglePlaceModelImpl;

  factory _GooglePlaceModel.fromJson(Map<String, dynamic> json) =
      _$GooglePlaceModelImpl.fromJson;

  @override
  String get address;
  @override
  String get countryCode;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get name;
  @override
  String get googlePlaceId;

  /// Create a copy of GooglePlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GooglePlaceModelImplCopyWith<_$GooglePlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
