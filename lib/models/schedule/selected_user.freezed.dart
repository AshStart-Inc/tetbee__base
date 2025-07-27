// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SelectedUser _$SelectedUserFromJson(Map<String, dynamic> json) {
  return _SelectedUser.fromJson(json);
}

/// @nodoc
mixin _$SelectedUser {
  bool get isConfirmed => throw _privateConstructorUsedError;

  /// Serializes this SelectedUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedUserCopyWith<SelectedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedUserCopyWith<$Res> {
  factory $SelectedUserCopyWith(
    SelectedUser value,
    $Res Function(SelectedUser) then,
  ) = _$SelectedUserCopyWithImpl<$Res, SelectedUser>;
  @useResult
  $Res call({bool isConfirmed});
}

/// @nodoc
class _$SelectedUserCopyWithImpl<$Res, $Val extends SelectedUser>
    implements $SelectedUserCopyWith<$Res> {
  _$SelectedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isConfirmed = null}) {
    return _then(
      _value.copyWith(
            isConfirmed:
                null == isConfirmed
                    ? _value.isConfirmed
                    : isConfirmed // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SelectedUserImplCopyWith<$Res>
    implements $SelectedUserCopyWith<$Res> {
  factory _$$SelectedUserImplCopyWith(
    _$SelectedUserImpl value,
    $Res Function(_$SelectedUserImpl) then,
  ) = __$$SelectedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConfirmed});
}

/// @nodoc
class __$$SelectedUserImplCopyWithImpl<$Res>
    extends _$SelectedUserCopyWithImpl<$Res, _$SelectedUserImpl>
    implements _$$SelectedUserImplCopyWith<$Res> {
  __$$SelectedUserImplCopyWithImpl(
    _$SelectedUserImpl _value,
    $Res Function(_$SelectedUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isConfirmed = null}) {
    return _then(
      _$SelectedUserImpl(
        isConfirmed:
            null == isConfirmed
                ? _value.isConfirmed
                : isConfirmed // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedUserImpl implements _SelectedUser {
  const _$SelectedUserImpl({this.isConfirmed = false});

  factory _$SelectedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedUserImplFromJson(json);

  @override
  @JsonKey()
  final bool isConfirmed;

  @override
  String toString() {
    return 'SelectedUser(isConfirmed: $isConfirmed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedUserImpl &&
            (identical(other.isConfirmed, isConfirmed) ||
                other.isConfirmed == isConfirmed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isConfirmed);

  /// Create a copy of SelectedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedUserImplCopyWith<_$SelectedUserImpl> get copyWith =>
      __$$SelectedUserImplCopyWithImpl<_$SelectedUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedUserImplToJson(this);
  }
}

abstract class _SelectedUser implements SelectedUser {
  const factory _SelectedUser({final bool isConfirmed}) = _$SelectedUserImpl;

  factory _SelectedUser.fromJson(Map<String, dynamic> json) =
      _$SelectedUserImpl.fromJson;

  @override
  bool get isConfirmed;

  /// Create a copy of SelectedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedUserImplCopyWith<_$SelectedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
