// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_message_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserMessageRead _$UserMessageReadFromJson(Map<String, dynamic> json) {
  return _UserMessageRead.fromJson(json);
}

/// @nodoc
mixin _$UserMessageRead {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get lastReads => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  ChatType get chatType => throw _privateConstructorUsedError;

  /// Serializes this UserMessageRead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserMessageRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMessageReadCopyWith<UserMessageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMessageReadCopyWith<$Res> {
  factory $UserMessageReadCopyWith(
    UserMessageRead value,
    $Res Function(UserMessageRead) then,
  ) = _$UserMessageReadCopyWithImpl<$Res, UserMessageRead>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? lastReads,
    int unreadCount,
    ChatType chatType,
  });
}

/// @nodoc
class _$UserMessageReadCopyWithImpl<$Res, $Val extends UserMessageRead>
    implements $UserMessageReadCopyWith<$Res> {
  _$UserMessageReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMessageRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lastReads = freezed,
    Object? unreadCount = null,
    Object? chatType = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastReads:
                freezed == lastReads
                    ? _value.lastReads
                    : lastReads // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            unreadCount:
                null == unreadCount
                    ? _value.unreadCount
                    : unreadCount // ignore: cast_nullable_to_non_nullable
                        as int,
            chatType:
                null == chatType
                    ? _value.chatType
                    : chatType // ignore: cast_nullable_to_non_nullable
                        as ChatType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserMessageReadImplCopyWith<$Res>
    implements $UserMessageReadCopyWith<$Res> {
  factory _$$UserMessageReadImplCopyWith(
    _$UserMessageReadImpl value,
    $Res Function(_$UserMessageReadImpl) then,
  ) = __$$UserMessageReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? lastReads,
    int unreadCount,
    ChatType chatType,
  });
}

/// @nodoc
class __$$UserMessageReadImplCopyWithImpl<$Res>
    extends _$UserMessageReadCopyWithImpl<$Res, _$UserMessageReadImpl>
    implements _$$UserMessageReadImplCopyWith<$Res> {
  __$$UserMessageReadImplCopyWithImpl(
    _$UserMessageReadImpl _value,
    $Res Function(_$UserMessageReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserMessageRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lastReads = freezed,
    Object? unreadCount = null,
    Object? chatType = null,
  }) {
    return _then(
      _$UserMessageReadImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastReads:
            freezed == lastReads
                ? _value.lastReads
                : lastReads // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        unreadCount:
            null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                    as int,
        chatType:
            null == chatType
                ? _value.chatType
                : chatType // ignore: cast_nullable_to_non_nullable
                    as ChatType,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserMessageReadImpl implements _UserMessageRead {
  const _$UserMessageReadImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.lastReads,
    this.unreadCount = 0,
    required this.chatType,
  });

  factory _$UserMessageReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMessageReadImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? lastReads;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  final ChatType chatType;

  @override
  String toString() {
    return 'UserMessageRead(id: $id, lastReads: $lastReads, unreadCount: $unreadCount, chatType: $chatType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMessageReadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastReads, lastReads) ||
                other.lastReads == lastReads) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, lastReads, unreadCount, chatType);

  /// Create a copy of UserMessageRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMessageReadImplCopyWith<_$UserMessageReadImpl> get copyWith =>
      __$$UserMessageReadImplCopyWithImpl<_$UserMessageReadImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMessageReadImplToJson(this);
  }
}

abstract class _UserMessageRead implements UserMessageRead {
  const factory _UserMessageRead({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? lastReads,
    final int unreadCount,
    required final ChatType chatType,
  }) = _$UserMessageReadImpl;

  factory _UserMessageRead.fromJson(Map<String, dynamic> json) =
      _$UserMessageReadImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get lastReads;
  @override
  int get unreadCount;
  @override
  ChatType get chatType;

  /// Create a copy of UserMessageRead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMessageReadImplCopyWith<_$UserMessageReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
