// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voting_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VotingOption _$VotingOptionFromJson(Map<String, dynamic> json) {
  return _VotingOption.fromJson(json);
}

/// @nodoc
mixin _$VotingOption {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
  Color? get color => throw _privateConstructorUsedError;
  List<String> get votes => throw _privateConstructorUsedError;

  /// Serializes this VotingOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VotingOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VotingOptionCopyWith<VotingOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VotingOptionCopyWith<$Res> {
  factory $VotingOptionCopyWith(
    VotingOption value,
    $Res Function(VotingOption) then,
  ) = _$VotingOptionCopyWithImpl<$Res, VotingOption>;
  @useResult
  $Res call({
    String title,
    String? description,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    Color? color,
    List<String> votes,
  });
}

/// @nodoc
class _$VotingOptionCopyWithImpl<$Res, $Val extends VotingOption>
    implements $VotingOptionCopyWith<$Res> {
  _$VotingOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VotingOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? color = freezed,
    Object? votes = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            color:
                freezed == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as Color?,
            votes:
                null == votes
                    ? _value.votes
                    : votes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VotingOptionImplCopyWith<$Res>
    implements $VotingOptionCopyWith<$Res> {
  factory _$$VotingOptionImplCopyWith(
    _$VotingOptionImpl value,
    $Res Function(_$VotingOptionImpl) then,
  ) = __$$VotingOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String? description,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    Color? color,
    List<String> votes,
  });
}

/// @nodoc
class __$$VotingOptionImplCopyWithImpl<$Res>
    extends _$VotingOptionCopyWithImpl<$Res, _$VotingOptionImpl>
    implements _$$VotingOptionImplCopyWith<$Res> {
  __$$VotingOptionImplCopyWithImpl(
    _$VotingOptionImpl _value,
    $Res Function(_$VotingOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VotingOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? color = freezed,
    Object? votes = null,
  }) {
    return _then(
      _$VotingOptionImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        color:
            freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as Color?,
        votes:
            null == votes
                ? _value._votes
                : votes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VotingOptionImpl implements _VotingOption {
  const _$VotingOptionImpl({
    required this.title,
    this.description,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    this.color,
    final List<String> votes = const [],
  }) : _votes = votes;

  factory _$VotingOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$VotingOptionImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
  final Color? color;
  final List<String> _votes;
  @override
  @JsonKey()
  List<String> get votes {
    if (_votes is EqualUnmodifiableListView) return _votes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votes);
  }

  @override
  String toString() {
    return 'VotingOption(title: $title, description: $description, color: $color, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VotingOptionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._votes, _votes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    description,
    color,
    const DeepCollectionEquality().hash(_votes),
  );

  /// Create a copy of VotingOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VotingOptionImplCopyWith<_$VotingOptionImpl> get copyWith =>
      __$$VotingOptionImplCopyWithImpl<_$VotingOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VotingOptionImplToJson(this);
  }
}

abstract class _VotingOption implements VotingOption {
  const factory _VotingOption({
    required final String title,
    final String? description,
    @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
    final Color? color,
    final List<String> votes,
  }) = _$VotingOptionImpl;

  factory _VotingOption.fromJson(Map<String, dynamic> json) =
      _$VotingOptionImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(toJson: Helpers.colorToInt, fromJson: Helpers.colorFromInt)
  Color? get color;
  @override
  List<String> get votes;

  /// Create a copy of VotingOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VotingOptionImplCopyWith<_$VotingOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
