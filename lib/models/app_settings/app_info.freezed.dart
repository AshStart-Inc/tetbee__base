// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) {
  return _AppInfo.fromJson(json);
}

/// @nodoc
mixin _$AppInfo {
  List<Membership> get memberships => throw _privateConstructorUsedError;
  String? get androidBannerId => throw _privateConstructorUsedError;
  String? get iosBannerId => throw _privateConstructorUsedError;
  bool get isCreateUserAllowed => throw _privateConstructorUsedError;
  bool get isCreatePlaceAllowed => throw _privateConstructorUsedError;
  bool get showAds => throw _privateConstructorUsedError;
  String? get versionCode => throw _privateConstructorUsedError;
  List<WorkPlaceType> get workPlaceType => throw _privateConstructorUsedError;

  /// Serializes this AppInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res, AppInfo>;
  @useResult
  $Res call({
    List<Membership> memberships,
    String? androidBannerId,
    String? iosBannerId,
    bool isCreateUserAllowed,
    bool isCreatePlaceAllowed,
    bool showAds,
    String? versionCode,
    List<WorkPlaceType> workPlaceType,
  });
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res, $Val extends AppInfo>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberships = null,
    Object? androidBannerId = freezed,
    Object? iosBannerId = freezed,
    Object? isCreateUserAllowed = null,
    Object? isCreatePlaceAllowed = null,
    Object? showAds = null,
    Object? versionCode = freezed,
    Object? workPlaceType = null,
  }) {
    return _then(
      _value.copyWith(
            memberships:
                null == memberships
                    ? _value.memberships
                    : memberships // ignore: cast_nullable_to_non_nullable
                        as List<Membership>,
            androidBannerId:
                freezed == androidBannerId
                    ? _value.androidBannerId
                    : androidBannerId // ignore: cast_nullable_to_non_nullable
                        as String?,
            iosBannerId:
                freezed == iosBannerId
                    ? _value.iosBannerId
                    : iosBannerId // ignore: cast_nullable_to_non_nullable
                        as String?,
            isCreateUserAllowed:
                null == isCreateUserAllowed
                    ? _value.isCreateUserAllowed
                    : isCreateUserAllowed // ignore: cast_nullable_to_non_nullable
                        as bool,
            isCreatePlaceAllowed:
                null == isCreatePlaceAllowed
                    ? _value.isCreatePlaceAllowed
                    : isCreatePlaceAllowed // ignore: cast_nullable_to_non_nullable
                        as bool,
            showAds:
                null == showAds
                    ? _value.showAds
                    : showAds // ignore: cast_nullable_to_non_nullable
                        as bool,
            versionCode:
                freezed == versionCode
                    ? _value.versionCode
                    : versionCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            workPlaceType:
                null == workPlaceType
                    ? _value.workPlaceType
                    : workPlaceType // ignore: cast_nullable_to_non_nullable
                        as List<WorkPlaceType>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppInfoImplCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$AppInfoImplCopyWith(
    _$AppInfoImpl value,
    $Res Function(_$AppInfoImpl) then,
  ) = __$$AppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Membership> memberships,
    String? androidBannerId,
    String? iosBannerId,
    bool isCreateUserAllowed,
    bool isCreatePlaceAllowed,
    bool showAds,
    String? versionCode,
    List<WorkPlaceType> workPlaceType,
  });
}

/// @nodoc
class __$$AppInfoImplCopyWithImpl<$Res>
    extends _$AppInfoCopyWithImpl<$Res, _$AppInfoImpl>
    implements _$$AppInfoImplCopyWith<$Res> {
  __$$AppInfoImplCopyWithImpl(
    _$AppInfoImpl _value,
    $Res Function(_$AppInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberships = null,
    Object? androidBannerId = freezed,
    Object? iosBannerId = freezed,
    Object? isCreateUserAllowed = null,
    Object? isCreatePlaceAllowed = null,
    Object? showAds = null,
    Object? versionCode = freezed,
    Object? workPlaceType = null,
  }) {
    return _then(
      _$AppInfoImpl(
        memberships:
            null == memberships
                ? _value._memberships
                : memberships // ignore: cast_nullable_to_non_nullable
                    as List<Membership>,
        androidBannerId:
            freezed == androidBannerId
                ? _value.androidBannerId
                : androidBannerId // ignore: cast_nullable_to_non_nullable
                    as String?,
        iosBannerId:
            freezed == iosBannerId
                ? _value.iosBannerId
                : iosBannerId // ignore: cast_nullable_to_non_nullable
                    as String?,
        isCreateUserAllowed:
            null == isCreateUserAllowed
                ? _value.isCreateUserAllowed
                : isCreateUserAllowed // ignore: cast_nullable_to_non_nullable
                    as bool,
        isCreatePlaceAllowed:
            null == isCreatePlaceAllowed
                ? _value.isCreatePlaceAllowed
                : isCreatePlaceAllowed // ignore: cast_nullable_to_non_nullable
                    as bool,
        showAds:
            null == showAds
                ? _value.showAds
                : showAds // ignore: cast_nullable_to_non_nullable
                    as bool,
        versionCode:
            freezed == versionCode
                ? _value.versionCode
                : versionCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        workPlaceType:
            null == workPlaceType
                ? _value._workPlaceType
                : workPlaceType // ignore: cast_nullable_to_non_nullable
                    as List<WorkPlaceType>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppInfoImpl implements _AppInfo {
  const _$AppInfoImpl({
    required final List<Membership> memberships,
    this.androidBannerId,
    this.iosBannerId,
    required this.isCreateUserAllowed,
    required this.isCreatePlaceAllowed,
    required this.showAds,
    this.versionCode,
    required final List<WorkPlaceType> workPlaceType,
  }) : _memberships = memberships,
       _workPlaceType = workPlaceType;

  factory _$AppInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppInfoImplFromJson(json);

  final List<Membership> _memberships;
  @override
  List<Membership> get memberships {
    if (_memberships is EqualUnmodifiableListView) return _memberships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberships);
  }

  @override
  final String? androidBannerId;
  @override
  final String? iosBannerId;
  @override
  final bool isCreateUserAllowed;
  @override
  final bool isCreatePlaceAllowed;
  @override
  final bool showAds;
  @override
  final String? versionCode;
  final List<WorkPlaceType> _workPlaceType;
  @override
  List<WorkPlaceType> get workPlaceType {
    if (_workPlaceType is EqualUnmodifiableListView) return _workPlaceType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workPlaceType);
  }

  @override
  String toString() {
    return 'AppInfo(memberships: $memberships, androidBannerId: $androidBannerId, iosBannerId: $iosBannerId, isCreateUserAllowed: $isCreateUserAllowed, isCreatePlaceAllowed: $isCreatePlaceAllowed, showAds: $showAds, versionCode: $versionCode, workPlaceType: $workPlaceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoImpl &&
            const DeepCollectionEquality().equals(
              other._memberships,
              _memberships,
            ) &&
            (identical(other.androidBannerId, androidBannerId) ||
                other.androidBannerId == androidBannerId) &&
            (identical(other.iosBannerId, iosBannerId) ||
                other.iosBannerId == iosBannerId) &&
            (identical(other.isCreateUserAllowed, isCreateUserAllowed) ||
                other.isCreateUserAllowed == isCreateUserAllowed) &&
            (identical(other.isCreatePlaceAllowed, isCreatePlaceAllowed) ||
                other.isCreatePlaceAllowed == isCreatePlaceAllowed) &&
            (identical(other.showAds, showAds) || other.showAds == showAds) &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode) &&
            const DeepCollectionEquality().equals(
              other._workPlaceType,
              _workPlaceType,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_memberships),
    androidBannerId,
    iosBannerId,
    isCreateUserAllowed,
    isCreatePlaceAllowed,
    showAds,
    versionCode,
    const DeepCollectionEquality().hash(_workPlaceType),
  );

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      __$$AppInfoImplCopyWithImpl<_$AppInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppInfoImplToJson(this);
  }
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo({
    required final List<Membership> memberships,
    final String? androidBannerId,
    final String? iosBannerId,
    required final bool isCreateUserAllowed,
    required final bool isCreatePlaceAllowed,
    required final bool showAds,
    final String? versionCode,
    required final List<WorkPlaceType> workPlaceType,
  }) = _$AppInfoImpl;

  factory _AppInfo.fromJson(Map<String, dynamic> json) = _$AppInfoImpl.fromJson;

  @override
  List<Membership> get memberships;
  @override
  String? get androidBannerId;
  @override
  String? get iosBannerId;
  @override
  bool get isCreateUserAllowed;
  @override
  bool get isCreatePlaceAllowed;
  @override
  bool get showAds;
  @override
  String? get versionCode;
  @override
  List<WorkPlaceType> get workPlaceType;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
