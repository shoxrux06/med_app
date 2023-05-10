// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_of_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitOfTime _$UnitOfTimeFromJson(Map<String, dynamic> json) {
  return _UnitOfTime.fromJson(json);
}

/// @nodoc
mixin _$UnitOfTime {
  int get number => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitOfTimeCopyWith<UnitOfTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitOfTimeCopyWith<$Res> {
  factory $UnitOfTimeCopyWith(
          UnitOfTime value, $Res Function(UnitOfTime) then) =
      _$UnitOfTimeCopyWithImpl<$Res, UnitOfTime>;
  @useResult
  $Res call({int number, String unit});
}

/// @nodoc
class _$UnitOfTimeCopyWithImpl<$Res, $Val extends UnitOfTime>
    implements $UnitOfTimeCopyWith<$Res> {
  _$UnitOfTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnitOfTimeCopyWith<$Res>
    implements $UnitOfTimeCopyWith<$Res> {
  factory _$$_UnitOfTimeCopyWith(
          _$_UnitOfTime value, $Res Function(_$_UnitOfTime) then) =
      __$$_UnitOfTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String unit});
}

/// @nodoc
class __$$_UnitOfTimeCopyWithImpl<$Res>
    extends _$UnitOfTimeCopyWithImpl<$Res, _$_UnitOfTime>
    implements _$$_UnitOfTimeCopyWith<$Res> {
  __$$_UnitOfTimeCopyWithImpl(
      _$_UnitOfTime _value, $Res Function(_$_UnitOfTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? unit = null,
  }) {
    return _then(_$_UnitOfTime(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnitOfTime implements _UnitOfTime {
  _$_UnitOfTime({this.number = 0, this.unit = ''});

  factory _$_UnitOfTime.fromJson(Map<String, dynamic> json) =>
      _$$_UnitOfTimeFromJson(json);

  @override
  @JsonKey()
  final int number;
  @override
  @JsonKey()
  final String unit;

  @override
  String toString() {
    return 'UnitOfTime(number: $number, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitOfTime &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitOfTimeCopyWith<_$_UnitOfTime> get copyWith =>
      __$$_UnitOfTimeCopyWithImpl<_$_UnitOfTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitOfTimeToJson(
      this,
    );
  }
}

abstract class _UnitOfTime implements UnitOfTime {
  factory _UnitOfTime({final int number, final String unit}) = _$_UnitOfTime;

  factory _UnitOfTime.fromJson(Map<String, dynamic> json) =
      _$_UnitOfTime.fromJson;

  @override
  int get number;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_UnitOfTimeCopyWith<_$_UnitOfTime> get copyWith =>
      throw _privateConstructorUsedError;
}
