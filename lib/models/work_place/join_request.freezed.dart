// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JoinRequest _$JoinRequestFromJson(Map<String, dynamic> json) {
  return _JoinRequest.fromJson(json);
}

/// @nodoc
mixin _$JoinRequest {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get readAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  String? get acceptedUserId => throw _privateConstructorUsedError;
  PositionModel get position => throw _privateConstructorUsedError;
  bool get isRejected => throw _privateConstructorUsedError;
  bool get isConfirmed => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  bool get isCanceled => throw _privateConstructorUsedError;
  List<String> get notificationPositionIds =>
      throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get commentFromWorkPlace => throw _privateConstructorUsedError;

  /// Serializes this JoinRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinRequestCopyWith<JoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinRequestCopyWith<$Res> {
  factory $JoinRequestCopyWith(
    JoinRequest value,
    $Res Function(JoinRequest) then,
  ) = _$JoinRequestCopyWithImpl<$Res, JoinRequest>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? readAt,
    String userId,
    String placeId,
    String? acceptedUserId,
    PositionModel position,
    bool isRejected,
    bool isConfirmed,
    bool isDeleted,
    bool isCanceled,
    List<String> notificationPositionIds,
    String comment,
    String commentFromWorkPlace,
  });

  $PositionModelCopyWith<$Res> get position;
}

/// @nodoc
class _$JoinRequestCopyWithImpl<$Res, $Val extends JoinRequest>
    implements $JoinRequestCopyWith<$Res> {
  _$JoinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? readAt = freezed,
    Object? userId = null,
    Object? placeId = null,
    Object? acceptedUserId = freezed,
    Object? position = null,
    Object? isRejected = null,
    Object? isConfirmed = null,
    Object? isDeleted = null,
    Object? isCanceled = null,
    Object? notificationPositionIds = null,
    Object? comment = null,
    Object? commentFromWorkPlace = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            createdBy:
                null == createdBy
                    ? _value.createdBy
                    : createdBy // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            readAt:
                freezed == readAt
                    ? _value.readAt
                    : readAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            placeId:
                null == placeId
                    ? _value.placeId
                    : placeId // ignore: cast_nullable_to_non_nullable
                        as String,
            acceptedUserId:
                freezed == acceptedUserId
                    ? _value.acceptedUserId
                    : acceptedUserId // ignore: cast_nullable_to_non_nullable
                        as String?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as PositionModel,
            isRejected:
                null == isRejected
                    ? _value.isRejected
                    : isRejected // ignore: cast_nullable_to_non_nullable
                        as bool,
            isConfirmed:
                null == isConfirmed
                    ? _value.isConfirmed
                    : isConfirmed // ignore: cast_nullable_to_non_nullable
                        as bool,
            isDeleted:
                null == isDeleted
                    ? _value.isDeleted
                    : isDeleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            isCanceled:
                null == isCanceled
                    ? _value.isCanceled
                    : isCanceled // ignore: cast_nullable_to_non_nullable
                        as bool,
            notificationPositionIds:
                null == notificationPositionIds
                    ? _value.notificationPositionIds
                    : notificationPositionIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            comment:
                null == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String,
            commentFromWorkPlace:
                null == commentFromWorkPlace
                    ? _value.commentFromWorkPlace
                    : commentFromWorkPlace // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionModelCopyWith<$Res> get position {
    return $PositionModelCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JoinRequestImplCopyWith<$Res>
    implements $JoinRequestCopyWith<$Res> {
  factory _$$JoinRequestImplCopyWith(
    _$JoinRequestImpl value,
    $Res Function(_$JoinRequestImpl) then,
  ) = __$$JoinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? readAt,
    String userId,
    String placeId,
    String? acceptedUserId,
    PositionModel position,
    bool isRejected,
    bool isConfirmed,
    bool isDeleted,
    bool isCanceled,
    List<String> notificationPositionIds,
    String comment,
    String commentFromWorkPlace,
  });

  @override
  $PositionModelCopyWith<$Res> get position;
}

/// @nodoc
class __$$JoinRequestImplCopyWithImpl<$Res>
    extends _$JoinRequestCopyWithImpl<$Res, _$JoinRequestImpl>
    implements _$$JoinRequestImplCopyWith<$Res> {
  __$$JoinRequestImplCopyWithImpl(
    _$JoinRequestImpl _value,
    $Res Function(_$JoinRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? readAt = freezed,
    Object? userId = null,
    Object? placeId = null,
    Object? acceptedUserId = freezed,
    Object? position = null,
    Object? isRejected = null,
    Object? isConfirmed = null,
    Object? isDeleted = null,
    Object? isCanceled = null,
    Object? notificationPositionIds = null,
    Object? comment = null,
    Object? commentFromWorkPlace = null,
  }) {
    return _then(
      _$JoinRequestImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        createdBy:
            null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        readAt:
            freezed == readAt
                ? _value.readAt
                : readAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        placeId:
            null == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                    as String,
        acceptedUserId:
            freezed == acceptedUserId
                ? _value.acceptedUserId
                : acceptedUserId // ignore: cast_nullable_to_non_nullable
                    as String?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as PositionModel,
        isRejected:
            null == isRejected
                ? _value.isRejected
                : isRejected // ignore: cast_nullable_to_non_nullable
                    as bool,
        isConfirmed:
            null == isConfirmed
                ? _value.isConfirmed
                : isConfirmed // ignore: cast_nullable_to_non_nullable
                    as bool,
        isDeleted:
            null == isDeleted
                ? _value.isDeleted
                : isDeleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        isCanceled:
            null == isCanceled
                ? _value.isCanceled
                : isCanceled // ignore: cast_nullable_to_non_nullable
                    as bool,
        notificationPositionIds:
            null == notificationPositionIds
                ? _value._notificationPositionIds
                : notificationPositionIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        comment:
            null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String,
        commentFromWorkPlace:
            null == commentFromWorkPlace
                ? _value.commentFromWorkPlace
                : commentFromWorkPlace // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$JoinRequestImpl implements _JoinRequest {
  const _$JoinRequestImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.readAt,
    required this.userId,
    required this.placeId,
    this.acceptedUserId,
    this.position = const PositionModel(name: '', color: Colors.black),
    this.isRejected = false,
    this.isConfirmed = false,
    this.isDeleted = false,
    this.isCanceled = false,
    final List<String> notificationPositionIds = const [],
    this.comment = '',
    this.commentFromWorkPlace = '',
  }) : _notificationPositionIds = notificationPositionIds;

  factory _$JoinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinRequestImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? createdAt;
  @override
  @JsonKey()
  final String createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? updatedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? readAt;
  @override
  final String userId;
  @override
  final String placeId;
  @override
  final String? acceptedUserId;
  @override
  @JsonKey()
  final PositionModel position;
  @override
  @JsonKey()
  final bool isRejected;
  @override
  @JsonKey()
  final bool isConfirmed;
  @override
  @JsonKey()
  final bool isDeleted;
  @override
  @JsonKey()
  final bool isCanceled;
  final List<String> _notificationPositionIds;
  @override
  @JsonKey()
  List<String> get notificationPositionIds {
    if (_notificationPositionIds is EqualUnmodifiableListView)
      return _notificationPositionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationPositionIds);
  }

  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final String commentFromWorkPlace;

  @override
  String toString() {
    return 'JoinRequest(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, readAt: $readAt, userId: $userId, placeId: $placeId, acceptedUserId: $acceptedUserId, position: $position, isRejected: $isRejected, isConfirmed: $isConfirmed, isDeleted: $isDeleted, isCanceled: $isCanceled, notificationPositionIds: $notificationPositionIds, comment: $comment, commentFromWorkPlace: $commentFromWorkPlace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.acceptedUserId, acceptedUserId) ||
                other.acceptedUserId == acceptedUserId) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isRejected, isRejected) ||
                other.isRejected == isRejected) &&
            (identical(other.isConfirmed, isConfirmed) ||
                other.isConfirmed == isConfirmed) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isCanceled, isCanceled) ||
                other.isCanceled == isCanceled) &&
            const DeepCollectionEquality().equals(
              other._notificationPositionIds,
              _notificationPositionIds,
            ) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentFromWorkPlace, commentFromWorkPlace) ||
                other.commentFromWorkPlace == commentFromWorkPlace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    readAt,
    userId,
    placeId,
    acceptedUserId,
    position,
    isRejected,
    isConfirmed,
    isDeleted,
    isCanceled,
    const DeepCollectionEquality().hash(_notificationPositionIds),
    comment,
    commentFromWorkPlace,
  );

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRequestImplCopyWith<_$JoinRequestImpl> get copyWith =>
      __$$JoinRequestImplCopyWithImpl<_$JoinRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinRequestImplToJson(this);
  }
}

abstract class _JoinRequest implements JoinRequest {
  const factory _JoinRequest({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? readAt,
    required final String userId,
    required final String placeId,
    final String? acceptedUserId,
    final PositionModel position,
    final bool isRejected,
    final bool isConfirmed,
    final bool isDeleted,
    final bool isCanceled,
    final List<String> notificationPositionIds,
    final String comment,
    final String commentFromWorkPlace,
  }) = _$JoinRequestImpl;

  factory _JoinRequest.fromJson(Map<String, dynamic> json) =
      _$JoinRequestImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get readAt;
  @override
  String get userId;
  @override
  String get placeId;
  @override
  String? get acceptedUserId;
  @override
  PositionModel get position;
  @override
  bool get isRejected;
  @override
  bool get isConfirmed;
  @override
  bool get isDeleted;
  @override
  bool get isCanceled;
  @override
  List<String> get notificationPositionIds;
  @override
  String get comment;
  @override
  String get commentFromWorkPlace;

  /// Create a copy of JoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRequestImplCopyWith<_$JoinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
