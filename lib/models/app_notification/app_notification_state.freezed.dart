// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppNotificationState _$AppNotificationStateFromJson(Map<String, dynamic> json) {
  return _AppNotificationState.fromJson(json);
}

/// @nodoc
mixin _$AppNotificationState {
  bool get read => throw _privateConstructorUsedError;

  /// Serializes this AppNotificationState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationStateCopyWith<AppNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationStateCopyWith<$Res> {
  factory $AppNotificationStateCopyWith(
    AppNotificationState value,
    $Res Function(AppNotificationState) then,
  ) = _$AppNotificationStateCopyWithImpl<$Res, AppNotificationState>;
  @useResult
  $Res call({bool read});
}

/// @nodoc
class _$AppNotificationStateCopyWithImpl<
  $Res,
  $Val extends AppNotificationState
>
    implements $AppNotificationStateCopyWith<$Res> {
  _$AppNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? read = null}) {
    return _then(
      _value.copyWith(
            read:
                null == read
                    ? _value.read
                    : read // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppNotificationStateImplCopyWith<$Res>
    implements $AppNotificationStateCopyWith<$Res> {
  factory _$$AppNotificationStateImplCopyWith(
    _$AppNotificationStateImpl value,
    $Res Function(_$AppNotificationStateImpl) then,
  ) = __$$AppNotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool read});
}

/// @nodoc
class __$$AppNotificationStateImplCopyWithImpl<$Res>
    extends _$AppNotificationStateCopyWithImpl<$Res, _$AppNotificationStateImpl>
    implements _$$AppNotificationStateImplCopyWith<$Res> {
  __$$AppNotificationStateImplCopyWithImpl(
    _$AppNotificationStateImpl _value,
    $Res Function(_$AppNotificationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? read = null}) {
    return _then(
      _$AppNotificationStateImpl(
        read:
            null == read
                ? _value.read
                : read // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppNotificationStateImpl implements _AppNotificationState {
  const _$AppNotificationStateImpl({this.read = true});

  factory _$AppNotificationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationStateImplFromJson(json);

  @override
  @JsonKey()
  final bool read;

  @override
  String toString() {
    return 'AppNotificationState(read: $read)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationStateImpl &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, read);

  /// Create a copy of AppNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationStateImplCopyWith<_$AppNotificationStateImpl>
  get copyWith =>
      __$$AppNotificationStateImplCopyWithImpl<_$AppNotificationStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationStateImplToJson(this);
  }
}

abstract class _AppNotificationState implements AppNotificationState {
  const factory _AppNotificationState({final bool read}) =
      _$AppNotificationStateImpl;

  factory _AppNotificationState.fromJson(Map<String, dynamic> json) =
      _$AppNotificationStateImpl.fromJson;

  @override
  bool get read;

  /// Create a copy of AppNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationStateImplCopyWith<_$AppNotificationStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
