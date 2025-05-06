// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_zone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TimeZoneModel _$TimeZoneModelFromJson(Map<String, dynamic> json) {
  return _TimeZoneModel.fromJson(json);
}

/// @nodoc
mixin _$TimeZoneModel {
  String get location => throw _privateConstructorUsedError;
  String get timeZoneName => throw _privateConstructorUsedError;
  int get offsetMilliseconds => throw _privateConstructorUsedError;
  bool get isDst => throw _privateConstructorUsedError;

  /// Serializes this TimeZoneModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeZoneModelCopyWith<TimeZoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneModelCopyWith<$Res> {
  factory $TimeZoneModelCopyWith(
    TimeZoneModel value,
    $Res Function(TimeZoneModel) then,
  ) = _$TimeZoneModelCopyWithImpl<$Res, TimeZoneModel>;
  @useResult
  $Res call({
    String location,
    String timeZoneName,
    int offsetMilliseconds,
    bool isDst,
  });
}

/// @nodoc
class _$TimeZoneModelCopyWithImpl<$Res, $Val extends TimeZoneModel>
    implements $TimeZoneModelCopyWith<$Res> {
  _$TimeZoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? timeZoneName = null,
    Object? offsetMilliseconds = null,
    Object? isDst = null,
  }) {
    return _then(
      _value.copyWith(
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String,
            timeZoneName:
                null == timeZoneName
                    ? _value.timeZoneName
                    : timeZoneName // ignore: cast_nullable_to_non_nullable
                        as String,
            offsetMilliseconds:
                null == offsetMilliseconds
                    ? _value.offsetMilliseconds
                    : offsetMilliseconds // ignore: cast_nullable_to_non_nullable
                        as int,
            isDst:
                null == isDst
                    ? _value.isDst
                    : isDst // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TimeZoneModelImplCopyWith<$Res>
    implements $TimeZoneModelCopyWith<$Res> {
  factory _$$TimeZoneModelImplCopyWith(
    _$TimeZoneModelImpl value,
    $Res Function(_$TimeZoneModelImpl) then,
  ) = __$$TimeZoneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String location,
    String timeZoneName,
    int offsetMilliseconds,
    bool isDst,
  });
}

/// @nodoc
class __$$TimeZoneModelImplCopyWithImpl<$Res>
    extends _$TimeZoneModelCopyWithImpl<$Res, _$TimeZoneModelImpl>
    implements _$$TimeZoneModelImplCopyWith<$Res> {
  __$$TimeZoneModelImplCopyWithImpl(
    _$TimeZoneModelImpl _value,
    $Res Function(_$TimeZoneModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? timeZoneName = null,
    Object? offsetMilliseconds = null,
    Object? isDst = null,
  }) {
    return _then(
      _$TimeZoneModelImpl(
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
        timeZoneName:
            null == timeZoneName
                ? _value.timeZoneName
                : timeZoneName // ignore: cast_nullable_to_non_nullable
                    as String,
        offsetMilliseconds:
            null == offsetMilliseconds
                ? _value.offsetMilliseconds
                : offsetMilliseconds // ignore: cast_nullable_to_non_nullable
                    as int,
        isDst:
            null == isDst
                ? _value.isDst
                : isDst // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeZoneModelImpl implements _TimeZoneModel {
  const _$TimeZoneModelImpl({
    required this.location,
    required this.timeZoneName,
    required this.offsetMilliseconds,
    required this.isDst,
  });

  factory _$TimeZoneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeZoneModelImplFromJson(json);

  @override
  final String location;
  @override
  final String timeZoneName;
  @override
  final int offsetMilliseconds;
  @override
  final bool isDst;

  @override
  String toString() {
    return 'TimeZoneModel(location: $location, timeZoneName: $timeZoneName, offsetMilliseconds: $offsetMilliseconds, isDst: $isDst)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeZoneModelImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.timeZoneName, timeZoneName) ||
                other.timeZoneName == timeZoneName) &&
            (identical(other.offsetMilliseconds, offsetMilliseconds) ||
                other.offsetMilliseconds == offsetMilliseconds) &&
            (identical(other.isDst, isDst) || other.isDst == isDst));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    location,
    timeZoneName,
    offsetMilliseconds,
    isDst,
  );

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeZoneModelImplCopyWith<_$TimeZoneModelImpl> get copyWith =>
      __$$TimeZoneModelImplCopyWithImpl<_$TimeZoneModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeZoneModelImplToJson(this);
  }
}

abstract class _TimeZoneModel implements TimeZoneModel {
  const factory _TimeZoneModel({
    required final String location,
    required final String timeZoneName,
    required final int offsetMilliseconds,
    required final bool isDst,
  }) = _$TimeZoneModelImpl;

  factory _TimeZoneModel.fromJson(Map<String, dynamic> json) =
      _$TimeZoneModelImpl.fromJson;

  @override
  String get location;
  @override
  String get timeZoneName;
  @override
  int get offsetMilliseconds;
  @override
  bool get isDst;

  /// Create a copy of TimeZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeZoneModelImplCopyWith<_$TimeZoneModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
