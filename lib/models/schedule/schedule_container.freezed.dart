// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScheduleContainer _$ScheduleContainerFromJson(Map<String, dynamic> json) {
  return _ScheduleContainer.fromJson(json);
}

/// @nodoc
mixin _$ScheduleContainer {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get endDate => throw _privateConstructorUsedError;
  Map<int, String> get selectedAvailabilityReceiverIds =>
      throw _privateConstructorUsedError;
  Map<String, SelectedUser> get selectedUserList =>
      throw _privateConstructorUsedError;
  bool get isReleased => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this ScheduleContainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleContainerCopyWith<ScheduleContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleContainerCopyWith<$Res> {
  factory $ScheduleContainerCopyWith(
    ScheduleContainer value,
    $Res Function(ScheduleContainer) then,
  ) = _$ScheduleContainerCopyWithImpl<$Res, ScheduleContainer>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? endDate,
    Map<int, String> selectedAvailabilityReceiverIds,
    Map<String, SelectedUser> selectedUserList,
    bool isReleased,
    bool deleted,
  });
}

/// @nodoc
class _$ScheduleContainerCopyWithImpl<$Res, $Val extends ScheduleContainer>
    implements $ScheduleContainerCopyWith<$Res> {
  _$ScheduleContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? selectedAvailabilityReceiverIds = null,
    Object? selectedUserList = null,
    Object? isReleased = null,
    Object? deleted = null,
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
            selectedAvailabilityReceiverIds:
                null == selectedAvailabilityReceiverIds
                    ? _value.selectedAvailabilityReceiverIds
                    : selectedAvailabilityReceiverIds // ignore: cast_nullable_to_non_nullable
                        as Map<int, String>,
            selectedUserList:
                null == selectedUserList
                    ? _value.selectedUserList
                    : selectedUserList // ignore: cast_nullable_to_non_nullable
                        as Map<String, SelectedUser>,
            isReleased:
                null == isReleased
                    ? _value.isReleased
                    : isReleased // ignore: cast_nullable_to_non_nullable
                        as bool,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScheduleContainerImplCopyWith<$Res>
    implements $ScheduleContainerCopyWith<$Res> {
  factory _$$ScheduleContainerImplCopyWith(
    _$ScheduleContainerImpl value,
    $Res Function(_$ScheduleContainerImpl) then,
  ) = __$$ScheduleContainerImplCopyWithImpl<$Res>;
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
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? endDate,
    Map<int, String> selectedAvailabilityReceiverIds,
    Map<String, SelectedUser> selectedUserList,
    bool isReleased,
    bool deleted,
  });
}

/// @nodoc
class __$$ScheduleContainerImplCopyWithImpl<$Res>
    extends _$ScheduleContainerCopyWithImpl<$Res, _$ScheduleContainerImpl>
    implements _$$ScheduleContainerImplCopyWith<$Res> {
  __$$ScheduleContainerImplCopyWithImpl(
    _$ScheduleContainerImpl _value,
    $Res Function(_$ScheduleContainerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? selectedAvailabilityReceiverIds = null,
    Object? selectedUserList = null,
    Object? isReleased = null,
    Object? deleted = null,
  }) {
    return _then(
      _$ScheduleContainerImpl(
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
        selectedAvailabilityReceiverIds:
            null == selectedAvailabilityReceiverIds
                ? _value._selectedAvailabilityReceiverIds
                : selectedAvailabilityReceiverIds // ignore: cast_nullable_to_non_nullable
                    as Map<int, String>,
        selectedUserList:
            null == selectedUserList
                ? _value._selectedUserList
                : selectedUserList // ignore: cast_nullable_to_non_nullable
                    as Map<String, SelectedUser>,
        isReleased:
            null == isReleased
                ? _value.isReleased
                : isReleased // ignore: cast_nullable_to_non_nullable
                    as bool,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ScheduleContainerImpl implements _ScheduleContainer {
  const _$ScheduleContainerImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    this.startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    this.endDate,
    final Map<int, String> selectedAvailabilityReceiverIds = const {},
    final Map<String, SelectedUser> selectedUserList = const {},
    this.isReleased = false,
    this.deleted = false,
  }) : _selectedAvailabilityReceiverIds = selectedAvailabilityReceiverIds,
       _selectedUserList = selectedUserList;

  factory _$ScheduleContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleContainerImplFromJson(json);

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
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  final DateTime? startDate;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  final DateTime? endDate;
  final Map<int, String> _selectedAvailabilityReceiverIds;
  @override
  @JsonKey()
  Map<int, String> get selectedAvailabilityReceiverIds {
    if (_selectedAvailabilityReceiverIds is EqualUnmodifiableMapView)
      return _selectedAvailabilityReceiverIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedAvailabilityReceiverIds);
  }

  final Map<String, SelectedUser> _selectedUserList;
  @override
  @JsonKey()
  Map<String, SelectedUser> get selectedUserList {
    if (_selectedUserList is EqualUnmodifiableMapView) return _selectedUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedUserList);
  }

  @override
  @JsonKey()
  final bool isReleased;
  @override
  @JsonKey()
  final bool deleted;

  @override
  String toString() {
    return 'ScheduleContainer(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, startDate: $startDate, endDate: $endDate, selectedAvailabilityReceiverIds: $selectedAvailabilityReceiverIds, selectedUserList: $selectedUserList, isReleased: $isReleased, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleContainerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(
              other._selectedAvailabilityReceiverIds,
              _selectedAvailabilityReceiverIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._selectedUserList,
              _selectedUserList,
            ) &&
            (identical(other.isReleased, isReleased) ||
                other.isReleased == isReleased) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
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
    startDate,
    endDate,
    const DeepCollectionEquality().hash(_selectedAvailabilityReceiverIds),
    const DeepCollectionEquality().hash(_selectedUserList),
    isReleased,
    deleted,
  );

  /// Create a copy of ScheduleContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleContainerImplCopyWith<_$ScheduleContainerImpl> get copyWith =>
      __$$ScheduleContainerImplCopyWithImpl<_$ScheduleContainerImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleContainerImplToJson(this);
  }
}

abstract class _ScheduleContainer implements ScheduleContainer {
  const factory _ScheduleContainer({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    final DateTime? startDate,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    final DateTime? endDate,
    final Map<int, String> selectedAvailabilityReceiverIds,
    final Map<String, SelectedUser> selectedUserList,
    final bool isReleased,
    final bool deleted,
  }) = _$ScheduleContainerImpl;

  factory _ScheduleContainer.fromJson(Map<String, dynamic> json) =
      _$ScheduleContainerImpl.fromJson;

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
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get startDate;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get endDate;
  @override
  Map<int, String> get selectedAvailabilityReceiverIds;
  @override
  Map<String, SelectedUser> get selectedUserList;
  @override
  bool get isReleased;
  @override
  bool get deleted;

  /// Create a copy of ScheduleContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleContainerImplCopyWith<_$ScheduleContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
