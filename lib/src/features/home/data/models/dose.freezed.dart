// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dose _$DoseFromJson(Map<String, dynamic> json) {
  return _Dose.fromJson(json);
}

/// @nodoc
mixin _$Dose {
  int get doseAmount => throw _privateConstructorUsedError;
  UnitOfTime? get unitOfTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoseCopyWith<Dose> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseCopyWith<$Res> {
  factory $DoseCopyWith(Dose value, $Res Function(Dose) then) =
      _$DoseCopyWithImpl<$Res, Dose>;
  @useResult
  $Res call({int doseAmount, UnitOfTime? unitOfTime});

  $UnitOfTimeCopyWith<$Res>? get unitOfTime;
}

/// @nodoc
class _$DoseCopyWithImpl<$Res, $Val extends Dose>
    implements $DoseCopyWith<$Res> {
  _$DoseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseAmount = null,
    Object? unitOfTime = freezed,
  }) {
    return _then(_value.copyWith(
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfTime: freezed == unitOfTime
          ? _value.unitOfTime
          : unitOfTime // ignore: cast_nullable_to_non_nullable
              as UnitOfTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfTimeCopyWith<$Res>? get unitOfTime {
    if (_value.unitOfTime == null) {
      return null;
    }

    return $UnitOfTimeCopyWith<$Res>(_value.unitOfTime!, (value) {
      return _then(_value.copyWith(unitOfTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DoseCopyWith<$Res> implements $DoseCopyWith<$Res> {
  factory _$$_DoseCopyWith(_$_Dose value, $Res Function(_$_Dose) then) =
      __$$_DoseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int doseAmount, UnitOfTime? unitOfTime});

  @override
  $UnitOfTimeCopyWith<$Res>? get unitOfTime;
}

/// @nodoc
class __$$_DoseCopyWithImpl<$Res> extends _$DoseCopyWithImpl<$Res, _$_Dose>
    implements _$$_DoseCopyWith<$Res> {
  __$$_DoseCopyWithImpl(_$_Dose _value, $Res Function(_$_Dose) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseAmount = null,
    Object? unitOfTime = freezed,
  }) {
    return _then(_$_Dose(
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as int,
      unitOfTime: freezed == unitOfTime
          ? _value.unitOfTime
          : unitOfTime // ignore: cast_nullable_to_non_nullable
              as UnitOfTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dose implements _Dose {
  _$_Dose({this.doseAmount = 0, this.unitOfTime});

  factory _$_Dose.fromJson(Map<String, dynamic> json) => _$$_DoseFromJson(json);

  @override
  @JsonKey()
  final int doseAmount;
  @override
  final UnitOfTime? unitOfTime;

  @override
  String toString() {
    return 'Dose(doseAmount: $doseAmount, unitOfTime: $unitOfTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dose &&
            (identical(other.doseAmount, doseAmount) ||
                other.doseAmount == doseAmount) &&
            (identical(other.unitOfTime, unitOfTime) ||
                other.unitOfTime == unitOfTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, doseAmount, unitOfTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseCopyWith<_$_Dose> get copyWith =>
      __$$_DoseCopyWithImpl<_$_Dose>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoseToJson(
      this,
    );
  }
}

abstract class _Dose implements Dose {
  factory _Dose({final int doseAmount, final UnitOfTime? unitOfTime}) = _$_Dose;

  factory _Dose.fromJson(Map<String, dynamic> json) = _$_Dose.fromJson;

  @override
  int get doseAmount;
  @override
  UnitOfTime? get unitOfTime;
  @override
  @JsonKey(ignore: true)
  _$$_DoseCopyWith<_$_Dose> get copyWith => throw _privateConstructorUsedError;
}
