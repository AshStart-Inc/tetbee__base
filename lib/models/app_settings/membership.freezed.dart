// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Membership _$MembershipFromJson(Map<String, dynamic> json) {
  return _Membership.fromJson(json);
}

/// @nodoc
mixin _$Membership {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get maximumPositions => throw _privateConstructorUsedError;
  int get maximumStaffCapacity => throw _privateConstructorUsedError;
  bool get showAds => throw _privateConstructorUsedError;

  /// Serializes this Membership to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipCopyWith<Membership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCopyWith<$Res> {
  factory $MembershipCopyWith(
    Membership value,
    $Res Function(Membership) then,
  ) = _$MembershipCopyWithImpl<$Res, Membership>;
  @useResult
  $Res call({
    String id,
    String name,
    int maximumPositions,
    int maximumStaffCapacity,
    bool showAds,
  });
}

/// @nodoc
class _$MembershipCopyWithImpl<$Res, $Val extends Membership>
    implements $MembershipCopyWith<$Res> {
  _$MembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maximumPositions = null,
    Object? maximumStaffCapacity = null,
    Object? showAds = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            maximumPositions:
                null == maximumPositions
                    ? _value.maximumPositions
                    : maximumPositions // ignore: cast_nullable_to_non_nullable
                        as int,
            maximumStaffCapacity:
                null == maximumStaffCapacity
                    ? _value.maximumStaffCapacity
                    : maximumStaffCapacity // ignore: cast_nullable_to_non_nullable
                        as int,
            showAds:
                null == showAds
                    ? _value.showAds
                    : showAds // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MembershipImplCopyWith<$Res>
    implements $MembershipCopyWith<$Res> {
  factory _$$MembershipImplCopyWith(
    _$MembershipImpl value,
    $Res Function(_$MembershipImpl) then,
  ) = __$$MembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    int maximumPositions,
    int maximumStaffCapacity,
    bool showAds,
  });
}

/// @nodoc
class __$$MembershipImplCopyWithImpl<$Res>
    extends _$MembershipCopyWithImpl<$Res, _$MembershipImpl>
    implements _$$MembershipImplCopyWith<$Res> {
  __$$MembershipImplCopyWithImpl(
    _$MembershipImpl _value,
    $Res Function(_$MembershipImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maximumPositions = null,
    Object? maximumStaffCapacity = null,
    Object? showAds = null,
  }) {
    return _then(
      _$MembershipImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        maximumPositions:
            null == maximumPositions
                ? _value.maximumPositions
                : maximumPositions // ignore: cast_nullable_to_non_nullable
                    as int,
        maximumStaffCapacity:
            null == maximumStaffCapacity
                ? _value.maximumStaffCapacity
                : maximumStaffCapacity // ignore: cast_nullable_to_non_nullable
                    as int,
        showAds:
            null == showAds
                ? _value.showAds
                : showAds // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipImpl implements _Membership {
  const _$MembershipImpl({
    required this.id,
    required this.name,
    required this.maximumPositions,
    required this.maximumStaffCapacity,
    required this.showAds,
  });

  factory _$MembershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int maximumPositions;
  @override
  final int maximumStaffCapacity;
  @override
  final bool showAds;

  @override
  String toString() {
    return 'Membership(id: $id, name: $name, maximumPositions: $maximumPositions, maximumStaffCapacity: $maximumStaffCapacity, showAds: $showAds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maximumPositions, maximumPositions) ||
                other.maximumPositions == maximumPositions) &&
            (identical(other.maximumStaffCapacity, maximumStaffCapacity) ||
                other.maximumStaffCapacity == maximumStaffCapacity) &&
            (identical(other.showAds, showAds) || other.showAds == showAds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    maximumPositions,
    maximumStaffCapacity,
    showAds,
  );

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipImplCopyWith<_$MembershipImpl> get copyWith =>
      __$$MembershipImplCopyWithImpl<_$MembershipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipImplToJson(this);
  }
}

abstract class _Membership implements Membership {
  const factory _Membership({
    required final String id,
    required final String name,
    required final int maximumPositions,
    required final int maximumStaffCapacity,
    required final bool showAds,
  }) = _$MembershipImpl;

  factory _Membership.fromJson(Map<String, dynamic> json) =
      _$MembershipImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get maximumPositions;
  @override
  int get maximumStaffCapacity;
  @override
  bool get showAds;

  /// Create a copy of Membership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipImplCopyWith<_$MembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
