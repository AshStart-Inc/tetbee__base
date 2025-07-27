// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_reminder_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvailabilityReminderRequest _$AvailabilityReminderRequestFromJson(
  Map<String, dynamic> json,
) {
  return AAvailabilityReminderRequest.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityReminderRequest {
  List<String> get selectedUserList => throw _privateConstructorUsedError;
  String get sentUserId => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  String get availabilityReceiverId => throw _privateConstructorUsedError;

  /// Serializes this AvailabilityReminderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailabilityReminderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityReminderRequestCopyWith<AvailabilityReminderRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityReminderRequestCopyWith<$Res> {
  factory $AvailabilityReminderRequestCopyWith(
    AvailabilityReminderRequest value,
    $Res Function(AvailabilityReminderRequest) then,
  ) =
      _$AvailabilityReminderRequestCopyWithImpl<
        $Res,
        AvailabilityReminderRequest
      >;
  @useResult
  $Res call({
    List<String> selectedUserList,
    String sentUserId,
    String placeId,
    String availabilityReceiverId,
  });
}

/// @nodoc
class _$AvailabilityReminderRequestCopyWithImpl<
  $Res,
  $Val extends AvailabilityReminderRequest
>
    implements $AvailabilityReminderRequestCopyWith<$Res> {
  _$AvailabilityReminderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailabilityReminderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUserList = null,
    Object? sentUserId = null,
    Object? placeId = null,
    Object? availabilityReceiverId = null,
  }) {
    return _then(
      _value.copyWith(
            selectedUserList:
                null == selectedUserList
                    ? _value.selectedUserList
                    : selectedUserList // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            sentUserId:
                null == sentUserId
                    ? _value.sentUserId
                    : sentUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            placeId:
                null == placeId
                    ? _value.placeId
                    : placeId // ignore: cast_nullable_to_non_nullable
                        as String,
            availabilityReceiverId:
                null == availabilityReceiverId
                    ? _value.availabilityReceiverId
                    : availabilityReceiverId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AAvailabilityReminderRequestImplCopyWith<$Res>
    implements $AvailabilityReminderRequestCopyWith<$Res> {
  factory _$$AAvailabilityReminderRequestImplCopyWith(
    _$AAvailabilityReminderRequestImpl value,
    $Res Function(_$AAvailabilityReminderRequestImpl) then,
  ) = __$$AAvailabilityReminderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> selectedUserList,
    String sentUserId,
    String placeId,
    String availabilityReceiverId,
  });
}

/// @nodoc
class __$$AAvailabilityReminderRequestImplCopyWithImpl<$Res>
    extends
        _$AvailabilityReminderRequestCopyWithImpl<
          $Res,
          _$AAvailabilityReminderRequestImpl
        >
    implements _$$AAvailabilityReminderRequestImplCopyWith<$Res> {
  __$$AAvailabilityReminderRequestImplCopyWithImpl(
    _$AAvailabilityReminderRequestImpl _value,
    $Res Function(_$AAvailabilityReminderRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailabilityReminderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUserList = null,
    Object? sentUserId = null,
    Object? placeId = null,
    Object? availabilityReceiverId = null,
  }) {
    return _then(
      _$AAvailabilityReminderRequestImpl(
        selectedUserList:
            null == selectedUserList
                ? _value._selectedUserList
                : selectedUserList // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        sentUserId:
            null == sentUserId
                ? _value.sentUserId
                : sentUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        placeId:
            null == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                    as String,
        availabilityReceiverId:
            null == availabilityReceiverId
                ? _value.availabilityReceiverId
                : availabilityReceiverId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AAvailabilityReminderRequestImpl
    implements AAvailabilityReminderRequest {
  const _$AAvailabilityReminderRequestImpl({
    final List<String> selectedUserList = const [],
    required this.sentUserId,
    required this.placeId,
    required this.availabilityReceiverId,
  }) : _selectedUserList = selectedUserList;

  factory _$AAvailabilityReminderRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AAvailabilityReminderRequestImplFromJson(json);

  final List<String> _selectedUserList;
  @override
  @JsonKey()
  List<String> get selectedUserList {
    if (_selectedUserList is EqualUnmodifiableListView)
      return _selectedUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUserList);
  }

  @override
  final String sentUserId;
  @override
  final String placeId;
  @override
  final String availabilityReceiverId;

  @override
  String toString() {
    return 'AvailabilityReminderRequest(selectedUserList: $selectedUserList, sentUserId: $sentUserId, placeId: $placeId, availabilityReceiverId: $availabilityReceiverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AAvailabilityReminderRequestImpl &&
            const DeepCollectionEquality().equals(
              other._selectedUserList,
              _selectedUserList,
            ) &&
            (identical(other.sentUserId, sentUserId) ||
                other.sentUserId == sentUserId) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.availabilityReceiverId, availabilityReceiverId) ||
                other.availabilityReceiverId == availabilityReceiverId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_selectedUserList),
    sentUserId,
    placeId,
    availabilityReceiverId,
  );

  /// Create a copy of AvailabilityReminderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AAvailabilityReminderRequestImplCopyWith<
    _$AAvailabilityReminderRequestImpl
  >
  get copyWith => __$$AAvailabilityReminderRequestImplCopyWithImpl<
    _$AAvailabilityReminderRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AAvailabilityReminderRequestImplToJson(this);
  }
}

abstract class AAvailabilityReminderRequest
    implements AvailabilityReminderRequest {
  const factory AAvailabilityReminderRequest({
    final List<String> selectedUserList,
    required final String sentUserId,
    required final String placeId,
    required final String availabilityReceiverId,
  }) = _$AAvailabilityReminderRequestImpl;

  factory AAvailabilityReminderRequest.fromJson(Map<String, dynamic> json) =
      _$AAvailabilityReminderRequestImpl.fromJson;

  @override
  List<String> get selectedUserList;
  @override
  String get sentUserId;
  @override
  String get placeId;
  @override
  String get availabilityReceiverId;

  /// Create a copy of AvailabilityReminderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AAvailabilityReminderRequestImplCopyWith<
    _$AAvailabilityReminderRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
