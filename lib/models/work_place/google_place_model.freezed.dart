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
  String get googlePlaceId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

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
    String googlePlaceId,
    String? name,
    double? latitude,
    double? longitude,
    String? description,
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
    Object? googlePlaceId = null,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _value.copyWith(
            googlePlaceId:
                null == googlePlaceId
                    ? _value.googlePlaceId
                    : googlePlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            latitude:
                freezed == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double?,
            longitude:
                freezed == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
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
    String googlePlaceId,
    String? name,
    double? latitude,
    double? longitude,
    String? description,
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
    Object? googlePlaceId = null,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _$GooglePlaceModelImpl(
        googlePlaceId:
            null == googlePlaceId
                ? _value.googlePlaceId
                : googlePlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        latitude:
            freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double?,
        longitude:
            freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GooglePlaceModelImpl implements _GooglePlaceModel {
  const _$GooglePlaceModelImpl({
    required this.googlePlaceId,
    this.name,
    this.latitude,
    this.longitude,
    this.description,
  });

  factory _$GooglePlaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GooglePlaceModelImplFromJson(json);

  @override
  final String googlePlaceId;
  @override
  final String? name;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? description;

  @override
  String toString() {
    return 'GooglePlaceModel(googlePlaceId: $googlePlaceId, name: $name, latitude: $latitude, longitude: $longitude, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GooglePlaceModelImpl &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    googlePlaceId,
    name,
    latitude,
    longitude,
    description,
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
    required final String googlePlaceId,
    final String? name,
    final double? latitude,
    final double? longitude,
    final String? description,
  }) = _$GooglePlaceModelImpl;

  factory _GooglePlaceModel.fromJson(Map<String, dynamic> json) =
      _$GooglePlaceModelImpl.fromJson;

  @override
  String get googlePlaceId;
  @override
  String? get name;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get description;

  /// Create a copy of GooglePlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GooglePlaceModelImplCopyWith<_$GooglePlaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
