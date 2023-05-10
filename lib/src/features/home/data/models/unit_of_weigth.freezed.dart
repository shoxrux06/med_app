// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_of_weigth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitOfWeight _$UnitOfWeightFromJson(Map<String, dynamic> json) {
  return _UnitOfWeight.fromJson(json);
}

/// @nodoc
mixin _$UnitOfWeight {
  int get number => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitOfWeightCopyWith<UnitOfWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitOfWeightCopyWith<$Res> {
  factory $UnitOfWeightCopyWith(
          UnitOfWeight value, $Res Function(UnitOfWeight) then) =
      _$UnitOfWeightCopyWithImpl<$Res, UnitOfWeight>;
  @useResult
  $Res call({int number, String unit});
}

/// @nodoc
class _$UnitOfWeightCopyWithImpl<$Res, $Val extends UnitOfWeight>
    implements $UnitOfWeightCopyWith<$Res> {
  _$UnitOfWeightCopyWithImpl(this._value, this._then);

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
abstract class _$$_UnitOfWeightCopyWith<$Res>
    implements $UnitOfWeightCopyWith<$Res> {
  factory _$$_UnitOfWeightCopyWith(
          _$_UnitOfWeight value, $Res Function(_$_UnitOfWeight) then) =
      __$$_UnitOfWeightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String unit});
}

/// @nodoc
class __$$_UnitOfWeightCopyWithImpl<$Res>
    extends _$UnitOfWeightCopyWithImpl<$Res, _$_UnitOfWeight>
    implements _$$_UnitOfWeightCopyWith<$Res> {
  __$$_UnitOfWeightCopyWithImpl(
      _$_UnitOfWeight _value, $Res Function(_$_UnitOfWeight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? unit = null,
  }) {
    return _then(_$_UnitOfWeight(
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
class _$_UnitOfWeight implements _UnitOfWeight {
  _$_UnitOfWeight({this.number = 0, this.unit = ''});

  factory _$_UnitOfWeight.fromJson(Map<String, dynamic> json) =>
      _$$_UnitOfWeightFromJson(json);

  @override
  @JsonKey()
  final int number;
  @override
  @JsonKey()
  final String unit;

  @override
  String toString() {
    return 'UnitOfWeight(number: $number, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitOfWeight &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitOfWeightCopyWith<_$_UnitOfWeight> get copyWith =>
      __$$_UnitOfWeightCopyWithImpl<_$_UnitOfWeight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitOfWeightToJson(
      this,
    );
  }
}

abstract class _UnitOfWeight implements UnitOfWeight {
  factory _UnitOfWeight({final int number, final String unit}) =
      _$_UnitOfWeight;

  factory _UnitOfWeight.fromJson(Map<String, dynamic> json) =
      _$_UnitOfWeight.fromJson;

  @override
  int get number;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_UnitOfWeightCopyWith<_$_UnitOfWeight> get copyWith =>
      throw _privateConstructorUsedError;
}
