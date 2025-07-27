// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_off_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TimeOffRequest _$TimeOffRequestFromJson(Map<String, dynamic> json) {
  return _TimeOffRequest.fromJson(json);
}

/// @nodoc
mixin _$TimeOffRequest {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  List<String> get scheduleDocIds => throw _privateConstructorUsedError;
  List<String> get filters => throw _privateConstructorUsedError;
  List<String> get scheduleContainerFilter =>
      throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get endDate => throw _privateConstructorUsedError;
  DocumentStatus get status => throw _privateConstructorUsedError;
  List<String> get notificationPositionTarget =>
      throw _privateConstructorUsedError;
  List<String> get requestedUserPositionIds =>
      throw _privateConstructorUsedError;

  /// Serializes this TimeOffRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeOffRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeOffRequestCopyWith<TimeOffRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeOffRequestCopyWith<$Res> {
  factory $TimeOffRequestCopyWith(
    TimeOffRequest value,
    $Res Function(TimeOffRequest) then,
  ) = _$TimeOffRequestCopyWithImpl<$Res, TimeOffRequest>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    bool deleted,
    bool archived,
    List<String> scheduleDocIds,
    List<String> filters,
    List<String> scheduleContainerFilter,
    String description,
    String rejectReason,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? endDate,
    DocumentStatus status,
    List<String> notificationPositionTarget,
    List<String> requestedUserPositionIds,
  });
}

/// @nodoc
class _$TimeOffRequestCopyWithImpl<$Res, $Val extends TimeOffRequest>
    implements $TimeOffRequestCopyWith<$Res> {
  _$TimeOffRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeOffRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? deleted = null,
    Object? archived = null,
    Object? scheduleDocIds = null,
    Object? filters = null,
    Object? scheduleContainerFilter = null,
    Object? description = null,
    Object? rejectReason = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? notificationPositionTarget = null,
    Object? requestedUserPositionIds = null,
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
            updatedBy:
                null == updatedBy
                    ? _value.updatedBy
                    : updatedBy // ignore: cast_nullable_to_non_nullable
                        as String,
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
            scheduleDocIds:
                null == scheduleDocIds
                    ? _value.scheduleDocIds
                    : scheduleDocIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            filters:
                null == filters
                    ? _value.filters
                    : filters // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            scheduleContainerFilter:
                null == scheduleContainerFilter
                    ? _value.scheduleContainerFilter
                    : scheduleContainerFilter // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            rejectReason:
                null == rejectReason
                    ? _value.rejectReason
                    : rejectReason // ignore: cast_nullable_to_non_nullable
                        as String,
            startDate:
                freezed == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            endDate:
                freezed == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DocumentStatus,
            notificationPositionTarget:
                null == notificationPositionTarget
                    ? _value.notificationPositionTarget
                    : notificationPositionTarget // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            requestedUserPositionIds:
                null == requestedUserPositionIds
                    ? _value.requestedUserPositionIds
                    : requestedUserPositionIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TimeOffRequestImplCopyWith<$Res>
    implements $TimeOffRequestCopyWith<$Res> {
  factory _$$TimeOffRequestImplCopyWith(
    _$TimeOffRequestImpl value,
    $Res Function(_$TimeOffRequestImpl) then,
  ) = __$$TimeOffRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    bool deleted,
    bool archived,
    List<String> scheduleDocIds,
    List<String> filters,
    List<String> scheduleContainerFilter,
    String description,
    String rejectReason,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? endDate,
    DocumentStatus status,
    List<String> notificationPositionTarget,
    List<String> requestedUserPositionIds,
  });
}

/// @nodoc
class __$$TimeOffRequestImplCopyWithImpl<$Res>
    extends _$TimeOffRequestCopyWithImpl<$Res, _$TimeOffRequestImpl>
    implements _$$TimeOffRequestImplCopyWith<$Res> {
  __$$TimeOffRequestImplCopyWithImpl(
    _$TimeOffRequestImpl _value,
    $Res Function(_$TimeOffRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimeOffRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? deleted = null,
    Object? archived = null,
    Object? scheduleDocIds = null,
    Object? filters = null,
    Object? scheduleContainerFilter = null,
    Object? description = null,
    Object? rejectReason = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? notificationPositionTarget = null,
    Object? requestedUserPositionIds = null,
  }) {
    return _then(
      _$TimeOffRequestImpl(
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
        updatedBy:
            null == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
                    as String,
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
        scheduleDocIds:
            null == scheduleDocIds
                ? _value._scheduleDocIds
                : scheduleDocIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        filters:
            null == filters
                ? _value._filters
                : filters // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        scheduleContainerFilter:
            null == scheduleContainerFilter
                ? _value._scheduleContainerFilter
                : scheduleContainerFilter // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        rejectReason:
            null == rejectReason
                ? _value.rejectReason
                : rejectReason // ignore: cast_nullable_to_non_nullable
                    as String,
        startDate:
            freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        endDate:
            freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DocumentStatus,
        notificationPositionTarget:
            null == notificationPositionTarget
                ? _value._notificationPositionTarget
                : notificationPositionTarget // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        requestedUserPositionIds:
            null == requestedUserPositionIds
                ? _value._requestedUserPositionIds
                : requestedUserPositionIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TimeOffRequestImpl implements _TimeOffRequest {
  const _$TimeOffRequestImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    this.deleted = false,
    this.archived = false,
    final List<String> scheduleDocIds = const [],
    final List<String> filters = const [],
    final List<String> scheduleContainerFilter = const [],
    this.description = '',
    this.rejectReason = '',
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    this.startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    this.endDate,
    this.status = DocumentStatus.onSubmit,
    final List<String> notificationPositionTarget = const [],
    final List<String> requestedUserPositionIds = const [],
  }) : _scheduleDocIds = scheduleDocIds,
       _filters = filters,
       _scheduleContainerFilter = scheduleContainerFilter,
       _notificationPositionTarget = notificationPositionTarget,
       _requestedUserPositionIds = requestedUserPositionIds;

  factory _$TimeOffRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeOffRequestImplFromJson(json);

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
  @JsonKey()
  final String updatedBy;
  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final bool archived;
  final List<String> _scheduleDocIds;
  @override
  @JsonKey()
  List<String> get scheduleDocIds {
    if (_scheduleDocIds is EqualUnmodifiableListView) return _scheduleDocIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleDocIds);
  }

  final List<String> _filters;
  @override
  @JsonKey()
  List<String> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<String> _scheduleContainerFilter;
  @override
  @JsonKey()
  List<String> get scheduleContainerFilter {
    if (_scheduleContainerFilter is EqualUnmodifiableListView)
      return _scheduleContainerFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduleContainerFilter);
  }

  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String rejectReason;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  final DateTime? startDate;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  final DateTime? endDate;
  @override
  @JsonKey()
  final DocumentStatus status;
  final List<String> _notificationPositionTarget;
  @override
  @JsonKey()
  List<String> get notificationPositionTarget {
    if (_notificationPositionTarget is EqualUnmodifiableListView)
      return _notificationPositionTarget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationPositionTarget);
  }

  final List<String> _requestedUserPositionIds;
  @override
  @JsonKey()
  List<String> get requestedUserPositionIds {
    if (_requestedUserPositionIds is EqualUnmodifiableListView)
      return _requestedUserPositionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requestedUserPositionIds);
  }

  @override
  String toString() {
    return 'TimeOffRequest(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, deleted: $deleted, archived: $archived, scheduleDocIds: $scheduleDocIds, filters: $filters, scheduleContainerFilter: $scheduleContainerFilter, description: $description, rejectReason: $rejectReason, startDate: $startDate, endDate: $endDate, status: $status, notificationPositionTarget: $notificationPositionTarget, requestedUserPositionIds: $requestedUserPositionIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOffRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            const DeepCollectionEquality().equals(
              other._scheduleDocIds,
              _scheduleDocIds,
            ) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality().equals(
              other._scheduleContainerFilter,
              _scheduleContainerFilter,
            ) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._notificationPositionTarget,
              _notificationPositionTarget,
            ) &&
            const DeepCollectionEquality().equals(
              other._requestedUserPositionIds,
              _requestedUserPositionIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    deleted,
    archived,
    const DeepCollectionEquality().hash(_scheduleDocIds),
    const DeepCollectionEquality().hash(_filters),
    const DeepCollectionEquality().hash(_scheduleContainerFilter),
    description,
    rejectReason,
    startDate,
    endDate,
    status,
    const DeepCollectionEquality().hash(_notificationPositionTarget),
    const DeepCollectionEquality().hash(_requestedUserPositionIds),
  );

  /// Create a copy of TimeOffRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOffRequestImplCopyWith<_$TimeOffRequestImpl> get copyWith =>
      __$$TimeOffRequestImplCopyWithImpl<_$TimeOffRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeOffRequestImplToJson(this);
  }
}

abstract class _TimeOffRequest implements TimeOffRequest {
  const factory _TimeOffRequest({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    final bool deleted,
    final bool archived,
    final List<String> scheduleDocIds,
    final List<String> filters,
    final List<String> scheduleContainerFilter,
    final String description,
    final String rejectReason,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    final DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    final DateTime? endDate,
    final DocumentStatus status,
    final List<String> notificationPositionTarget,
    final List<String> requestedUserPositionIds,
  }) = _$TimeOffRequestImpl;

  factory _TimeOffRequest.fromJson(Map<String, dynamic> json) =
      _$TimeOffRequestImpl.fromJson;

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
  String get updatedBy;
  @override
  bool get deleted;
  @override
  bool get archived;
  @override
  List<String> get scheduleDocIds;
  @override
  List<String> get filters;
  @override
  List<String> get scheduleContainerFilter;
  @override
  String get description;
  @override
  String get rejectReason;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get startDate;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get endDate;
  @override
  DocumentStatus get status;
  @override
  List<String> get notificationPositionTarget;
  @override
  List<String> get requestedUserPositionIds;

  /// Create a copy of TimeOffRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeOffRequestImplCopyWith<_$TimeOffRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
