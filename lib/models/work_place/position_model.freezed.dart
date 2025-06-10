// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PositionModel _$PositionModelFromJson(Map<String, dynamic> json) {
  return _PositionModel.fromJson(json);
}

/// @nodoc
mixin _$PositionModel {
  String? get id => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get ordinal => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
  Color? get color => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  bool get managePlaceAccess => throw _privateConstructorUsedError;
  bool get postingViewAccess => throw _privateConstructorUsedError;
  bool get postingAccess => throw _privateConstructorUsedError;
  bool get contactAccess => throw _privateConstructorUsedError;
  bool get scheduleAccess => throw _privateConstructorUsedError;
  bool get scheduleReviewAccess => throw _privateConstructorUsedError;
  bool get userInfoUpdateAccess => throw _privateConstructorUsedError;
  bool get chatRoomAccess => throw _privateConstructorUsedError;
  bool get dailyScheduleReviewPermission => throw _privateConstructorUsedError;

  /// Serializes this PositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionModelCopyWith<PositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionModelCopyWith<$Res> {
  factory $PositionModelCopyWith(
    PositionModel value,
    $Res Function(PositionModel) then,
  ) = _$PositionModelCopyWithImpl<$Res, PositionModel>;
  @useResult
  $Res call({
    String? id,
    bool isOwner,
    String name,
    int ordinal,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    Color? color,
    bool deleted,
    bool archived,
    bool managePlaceAccess,
    bool postingViewAccess,
    bool postingAccess,
    bool contactAccess,
    bool scheduleAccess,
    bool scheduleReviewAccess,
    bool userInfoUpdateAccess,
    bool chatRoomAccess,
    bool dailyScheduleReviewPermission,
  });
}

/// @nodoc
class _$PositionModelCopyWithImpl<$Res, $Val extends PositionModel>
    implements $PositionModelCopyWith<$Res> {
  _$PositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isOwner = null,
    Object? name = null,
    Object? ordinal = null,
    Object? color = freezed,
    Object? deleted = null,
    Object? archived = null,
    Object? managePlaceAccess = null,
    Object? postingViewAccess = null,
    Object? postingAccess = null,
    Object? contactAccess = null,
    Object? scheduleAccess = null,
    Object? scheduleReviewAccess = null,
    Object? userInfoUpdateAccess = null,
    Object? chatRoomAccess = null,
    Object? dailyScheduleReviewPermission = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            isOwner:
                null == isOwner
                    ? _value.isOwner
                    : isOwner // ignore: cast_nullable_to_non_nullable
                        as bool,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            ordinal:
                null == ordinal
                    ? _value.ordinal
                    : ordinal // ignore: cast_nullable_to_non_nullable
                        as int,
            color:
                freezed == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as Color?,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            archived:
                null == archived
                    ? _value.archived
                    : archived // ignore: cast_nullable_to_non_nullable
                        as bool,
            managePlaceAccess:
                null == managePlaceAccess
                    ? _value.managePlaceAccess
                    : managePlaceAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            postingViewAccess:
                null == postingViewAccess
                    ? _value.postingViewAccess
                    : postingViewAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            postingAccess:
                null == postingAccess
                    ? _value.postingAccess
                    : postingAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            contactAccess:
                null == contactAccess
                    ? _value.contactAccess
                    : contactAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            scheduleAccess:
                null == scheduleAccess
                    ? _value.scheduleAccess
                    : scheduleAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            scheduleReviewAccess:
                null == scheduleReviewAccess
                    ? _value.scheduleReviewAccess
                    : scheduleReviewAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            userInfoUpdateAccess:
                null == userInfoUpdateAccess
                    ? _value.userInfoUpdateAccess
                    : userInfoUpdateAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            chatRoomAccess:
                null == chatRoomAccess
                    ? _value.chatRoomAccess
                    : chatRoomAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            dailyScheduleReviewPermission:
                null == dailyScheduleReviewPermission
                    ? _value.dailyScheduleReviewPermission
                    : dailyScheduleReviewPermission // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PositionModelImplCopyWith<$Res>
    implements $PositionModelCopyWith<$Res> {
  factory _$$PositionModelImplCopyWith(
    _$PositionModelImpl value,
    $Res Function(_$PositionModelImpl) then,
  ) = __$$PositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    bool isOwner,
    String name,
    int ordinal,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    Color? color,
    bool deleted,
    bool archived,
    bool managePlaceAccess,
    bool postingViewAccess,
    bool postingAccess,
    bool contactAccess,
    bool scheduleAccess,
    bool scheduleReviewAccess,
    bool userInfoUpdateAccess,
    bool chatRoomAccess,
    bool dailyScheduleReviewPermission,
  });
}

/// @nodoc
class __$$PositionModelImplCopyWithImpl<$Res>
    extends _$PositionModelCopyWithImpl<$Res, _$PositionModelImpl>
    implements _$$PositionModelImplCopyWith<$Res> {
  __$$PositionModelImplCopyWithImpl(
    _$PositionModelImpl _value,
    $Res Function(_$PositionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isOwner = null,
    Object? name = null,
    Object? ordinal = null,
    Object? color = freezed,
    Object? deleted = null,
    Object? archived = null,
    Object? managePlaceAccess = null,
    Object? postingViewAccess = null,
    Object? postingAccess = null,
    Object? contactAccess = null,
    Object? scheduleAccess = null,
    Object? scheduleReviewAccess = null,
    Object? userInfoUpdateAccess = null,
    Object? chatRoomAccess = null,
    Object? dailyScheduleReviewPermission = null,
  }) {
    return _then(
      _$PositionModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        isOwner:
            null == isOwner
                ? _value.isOwner
                : isOwner // ignore: cast_nullable_to_non_nullable
                    as bool,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        ordinal:
            null == ordinal
                ? _value.ordinal
                : ordinal // ignore: cast_nullable_to_non_nullable
                    as int,
        color:
            freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as Color?,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        archived:
            null == archived
                ? _value.archived
                : archived // ignore: cast_nullable_to_non_nullable
                    as bool,
        managePlaceAccess:
            null == managePlaceAccess
                ? _value.managePlaceAccess
                : managePlaceAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        postingViewAccess:
            null == postingViewAccess
                ? _value.postingViewAccess
                : postingViewAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        postingAccess:
            null == postingAccess
                ? _value.postingAccess
                : postingAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        contactAccess:
            null == contactAccess
                ? _value.contactAccess
                : contactAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        scheduleAccess:
            null == scheduleAccess
                ? _value.scheduleAccess
                : scheduleAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        scheduleReviewAccess:
            null == scheduleReviewAccess
                ? _value.scheduleReviewAccess
                : scheduleReviewAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        userInfoUpdateAccess:
            null == userInfoUpdateAccess
                ? _value.userInfoUpdateAccess
                : userInfoUpdateAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        chatRoomAccess:
            null == chatRoomAccess
                ? _value.chatRoomAccess
                : chatRoomAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        dailyScheduleReviewPermission:
            null == dailyScheduleReviewPermission
                ? _value.dailyScheduleReviewPermission
                : dailyScheduleReviewPermission // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionModelImpl implements _PositionModel {
  const _$PositionModelImpl({
    this.id,
    this.isOwner = false,
    required this.name,
    this.ordinal = 0,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    this.color,
    this.deleted = false,
    this.archived = false,
    this.managePlaceAccess = false,
    this.postingViewAccess = false,
    this.postingAccess = false,
    this.contactAccess = false,
    this.scheduleAccess = false,
    this.scheduleReviewAccess = false,
    this.userInfoUpdateAccess = false,
    this.chatRoomAccess = false,
    this.dailyScheduleReviewPermission = false,
  });

  factory _$PositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final bool isOwner;
  @override
  final String name;
  @override
  @JsonKey()
  final int ordinal;
  @override
  @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
  final Color? color;
  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final bool archived;
  @override
  @JsonKey()
  final bool managePlaceAccess;
  @override
  @JsonKey()
  final bool postingViewAccess;
  @override
  @JsonKey()
  final bool postingAccess;
  @override
  @JsonKey()
  final bool contactAccess;
  @override
  @JsonKey()
  final bool scheduleAccess;
  @override
  @JsonKey()
  final bool scheduleReviewAccess;
  @override
  @JsonKey()
  final bool userInfoUpdateAccess;
  @override
  @JsonKey()
  final bool chatRoomAccess;
  @override
  @JsonKey()
  final bool dailyScheduleReviewPermission;

  @override
  String toString() {
    return 'PositionModel(id: $id, isOwner: $isOwner, name: $name, ordinal: $ordinal, color: $color, deleted: $deleted, archived: $archived, managePlaceAccess: $managePlaceAccess, postingViewAccess: $postingViewAccess, postingAccess: $postingAccess, contactAccess: $contactAccess, scheduleAccess: $scheduleAccess, scheduleReviewAccess: $scheduleReviewAccess, userInfoUpdateAccess: $userInfoUpdateAccess, chatRoomAccess: $chatRoomAccess, dailyScheduleReviewPermission: $dailyScheduleReviewPermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.managePlaceAccess, managePlaceAccess) ||
                other.managePlaceAccess == managePlaceAccess) &&
            (identical(other.postingViewAccess, postingViewAccess) ||
                other.postingViewAccess == postingViewAccess) &&
            (identical(other.postingAccess, postingAccess) ||
                other.postingAccess == postingAccess) &&
            (identical(other.contactAccess, contactAccess) ||
                other.contactAccess == contactAccess) &&
            (identical(other.scheduleAccess, scheduleAccess) ||
                other.scheduleAccess == scheduleAccess) &&
            (identical(other.scheduleReviewAccess, scheduleReviewAccess) ||
                other.scheduleReviewAccess == scheduleReviewAccess) &&
            (identical(other.userInfoUpdateAccess, userInfoUpdateAccess) ||
                other.userInfoUpdateAccess == userInfoUpdateAccess) &&
            (identical(other.chatRoomAccess, chatRoomAccess) ||
                other.chatRoomAccess == chatRoomAccess) &&
            (identical(
                  other.dailyScheduleReviewPermission,
                  dailyScheduleReviewPermission,
                ) ||
                other.dailyScheduleReviewPermission ==
                    dailyScheduleReviewPermission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    isOwner,
    name,
    ordinal,
    color,
    deleted,
    archived,
    managePlaceAccess,
    postingViewAccess,
    postingAccess,
    contactAccess,
    scheduleAccess,
    scheduleReviewAccess,
    userInfoUpdateAccess,
    chatRoomAccess,
    dailyScheduleReviewPermission,
  );

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      __$$PositionModelImplCopyWithImpl<_$PositionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionModelImplToJson(this);
  }
}

abstract class _PositionModel implements PositionModel {
  const factory _PositionModel({
    final String? id,
    final bool isOwner,
    required final String name,
    final int ordinal,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    final Color? color,
    final bool deleted,
    final bool archived,
    final bool managePlaceAccess,
    final bool postingViewAccess,
    final bool postingAccess,
    final bool contactAccess,
    final bool scheduleAccess,
    final bool scheduleReviewAccess,
    final bool userInfoUpdateAccess,
    final bool chatRoomAccess,
    final bool dailyScheduleReviewPermission,
  }) = _$PositionModelImpl;

  factory _PositionModel.fromJson(Map<String, dynamic> json) =
      _$PositionModelImpl.fromJson;

  @override
  String? get id;
  @override
  bool get isOwner;
  @override
  String get name;
  @override
  int get ordinal;
  @override
  @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
  Color? get color;
  @override
  bool get deleted;
  @override
  bool get archived;
  @override
  bool get managePlaceAccess;
  @override
  bool get postingViewAccess;
  @override
  bool get postingAccess;
  @override
  bool get contactAccess;
  @override
  bool get scheduleAccess;
  @override
  bool get scheduleReviewAccess;
  @override
  bool get userInfoUpdateAccess;
  @override
  bool get chatRoomAccess;
  @override
  bool get dailyScheduleReviewPermission;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
