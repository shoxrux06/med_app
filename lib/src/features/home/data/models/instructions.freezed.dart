// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instructions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Instructions _$InstructionsFromJson(Map<String, dynamic> json) {
  return _Instructions.fromJson(json);
}

/// @nodoc
mixin _$Instructions {
  DateTime? get startDateTime => throw _privateConstructorUsedError;
  DateTime? get endDateTime => throw _privateConstructorUsedError;
  String get takeAs => throw _privateConstructorUsedError;
  Dose? get dose => throw _privateConstructorUsedError;
  String get additionalInstructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionsCopyWith<Instructions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsCopyWith<$Res> {
  factory $InstructionsCopyWith(
          Instructions value, $Res Function(Instructions) then) =
      _$InstructionsCopyWithImpl<$Res, Instructions>;
  @useResult
  $Res call(
      {DateTime? startDateTime,
      DateTime? endDateTime,
      String takeAs,
      Dose? dose,
      String additionalInstructions});

  $DoseCopyWith<$Res>? get dose;
}

/// @nodoc
class _$InstructionsCopyWithImpl<$Res, $Val extends Instructions>
    implements $InstructionsCopyWith<$Res> {
  _$InstructionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? takeAs = null,
    Object? dose = freezed,
    Object? additionalInstructions = null,
  }) {
    return _then(_value.copyWith(
      startDateTime: freezed == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTime: freezed == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      takeAs: null == takeAs
          ? _value.takeAs
          : takeAs // ignore: cast_nullable_to_non_nullable
              as String,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose?,
      additionalInstructions: null == additionalInstructions
          ? _value.additionalInstructions
          : additionalInstructions // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseCopyWith<$Res>? get dose {
    if (_value.dose == null) {
      return null;
    }

    return $DoseCopyWith<$Res>(_value.dose!, (value) {
      return _then(_value.copyWith(dose: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InstructionsCopyWith<$Res>
    implements $InstructionsCopyWith<$Res> {
  factory _$$_InstructionsCopyWith(
          _$_Instructions value, $Res Function(_$_Instructions) then) =
      __$$_InstructionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startDateTime,
      DateTime? endDateTime,
      String takeAs,
      Dose? dose,
      String additionalInstructions});

  @override
  $DoseCopyWith<$Res>? get dose;
}

/// @nodoc
class __$$_InstructionsCopyWithImpl<$Res>
    extends _$InstructionsCopyWithImpl<$Res, _$_Instructions>
    implements _$$_InstructionsCopyWith<$Res> {
  __$$_InstructionsCopyWithImpl(
      _$_Instructions _value, $Res Function(_$_Instructions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? takeAs = null,
    Object? dose = freezed,
    Object? additionalInstructions = null,
  }) {
    return _then(_$_Instructions(
      startDateTime: freezed == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateTime: freezed == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      takeAs: null == takeAs
          ? _value.takeAs
          : takeAs // ignore: cast_nullable_to_non_nullable
              as String,
      dose: freezed == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose?,
      additionalInstructions: null == additionalInstructions
          ? _value.additionalInstructions
          : additionalInstructions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Instructions implements _Instructions {
  _$_Instructions(
      {this.startDateTime,
      this.endDateTime,
      this.takeAs = '',
      this.dose,
      this.additionalInstructions = ''});

  factory _$_Instructions.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionsFromJson(json);

  @override
  final DateTime? startDateTime;
  @override
  final DateTime? endDateTime;
  @override
  @JsonKey()
  final String takeAs;
  @override
  final Dose? dose;
  @override
  @JsonKey()
  final String additionalInstructions;

  @override
  String toString() {
    return 'Instructions(startDateTime: $startDateTime, endDateTime: $endDateTime, takeAs: $takeAs, dose: $dose, additionalInstructions: $additionalInstructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Instructions &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.takeAs, takeAs) || other.takeAs == takeAs) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.additionalInstructions, additionalInstructions) ||
                other.additionalInstructions == additionalInstructions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDateTime, endDateTime,
      takeAs, dose, additionalInstructions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstructionsCopyWith<_$_Instructions> get copyWith =>
      __$$_InstructionsCopyWithImpl<_$_Instructions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionsToJson(
      this,
    );
  }
}

abstract class _Instructions implements Instructions {
  factory _Instructions(
      {final DateTime? startDateTime,
      final DateTime? endDateTime,
      final String takeAs,
      final Dose? dose,
      final String additionalInstructions}) = _$_Instructions;

  factory _Instructions.fromJson(Map<String, dynamic> json) =
      _$_Instructions.fromJson;

  @override
  DateTime? get startDateTime;
  @override
  DateTime? get endDateTime;
  @override
  String get takeAs;
  @override
  Dose? get dose;
  @override
  String get additionalInstructions;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionsCopyWith<_$_Instructions> get copyWith =>
      throw _privateConstructorUsedError;
}
