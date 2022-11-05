// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Onboard _$OnboardFromJson(Map<String, dynamic> json) {
  return _Onboard.fromJson(json);
}

/// @nodoc
mixin _$Onboard {
  int get is_onboard => throw _privateConstructorUsedError;
  int get steps => throw _privateConstructorUsedError;
  int get current_step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardCopyWith<Onboard> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardCopyWith<$Res> {
  factory $OnboardCopyWith(Onboard value, $Res Function(Onboard) then) =
      _$OnboardCopyWithImpl<$Res, Onboard>;
  @useResult
  $Res call({int is_onboard, int steps, int current_step});
}

/// @nodoc
class _$OnboardCopyWithImpl<$Res, $Val extends Onboard>
    implements $OnboardCopyWith<$Res> {
  _$OnboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_onboard = null,
    Object? steps = null,
    Object? current_step = null,
  }) {
    return _then(_value.copyWith(
      is_onboard: null == is_onboard
          ? _value.is_onboard
          : is_onboard // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      current_step: null == current_step
          ? _value.current_step
          : current_step // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardCopyWith<$Res> implements $OnboardCopyWith<$Res> {
  factory _$$_OnboardCopyWith(
          _$_Onboard value, $Res Function(_$_Onboard) then) =
      __$$_OnboardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int is_onboard, int steps, int current_step});
}

/// @nodoc
class __$$_OnboardCopyWithImpl<$Res>
    extends _$OnboardCopyWithImpl<$Res, _$_Onboard>
    implements _$$_OnboardCopyWith<$Res> {
  __$$_OnboardCopyWithImpl(_$_Onboard _value, $Res Function(_$_Onboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_onboard = null,
    Object? steps = null,
    Object? current_step = null,
  }) {
    return _then(_$_Onboard(
      is_onboard: null == is_onboard
          ? _value.is_onboard
          : is_onboard // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      current_step: null == current_step
          ? _value.current_step
          : current_step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Onboard implements _Onboard {
  const _$_Onboard(
      {required this.is_onboard,
      required this.steps,
      required this.current_step});

  factory _$_Onboard.fromJson(Map<String, dynamic> json) =>
      _$$_OnboardFromJson(json);

  @override
  final int is_onboard;
  @override
  final int steps;
  @override
  final int current_step;

  @override
  String toString() {
    return 'Onboard(is_onboard: $is_onboard, steps: $steps, current_step: $current_step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Onboard &&
            (identical(other.is_onboard, is_onboard) ||
                other.is_onboard == is_onboard) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.current_step, current_step) ||
                other.current_step == current_step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, is_onboard, steps, current_step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardCopyWith<_$_Onboard> get copyWith =>
      __$$_OnboardCopyWithImpl<_$_Onboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnboardToJson(
      this,
    );
  }
}

abstract class _Onboard implements Onboard {
  const factory _Onboard(
      {required final int is_onboard,
      required final int steps,
      required final int current_step}) = _$_Onboard;

  factory _Onboard.fromJson(Map<String, dynamic> json) = _$_Onboard.fromJson;

  @override
  int get is_onboard;
  @override
  int get steps;
  @override
  int get current_step;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardCopyWith<_$_Onboard> get copyWith =>
      throw _privateConstructorUsedError;
}
