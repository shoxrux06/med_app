// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicationModel _$MedicationModelFromJson(Map<String, dynamic> json) {
  return _MedicationModel.fromJson(json);
}

/// @nodoc
mixin _$MedicationModel {
  MedicationDescription? get medicationDescription =>
      throw _privateConstructorUsedError;
  Instructions? get instructions => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationModelCopyWith<MedicationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationModelCopyWith<$Res> {
  factory $MedicationModelCopyWith(
          MedicationModel value, $Res Function(MedicationModel) then) =
      _$MedicationModelCopyWithImpl<$Res, MedicationModel>;
  @useResult
  $Res call(
      {MedicationDescription? medicationDescription,
      Instructions? instructions,
      String? notes});

  $MedicationDescriptionCopyWith<$Res>? get medicationDescription;
  $InstructionsCopyWith<$Res>? get instructions;
}

/// @nodoc
class _$MedicationModelCopyWithImpl<$Res, $Val extends MedicationModel>
    implements $MedicationModelCopyWith<$Res> {
  _$MedicationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationDescription = freezed,
    Object? instructions = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      medicationDescription: freezed == medicationDescription
          ? _value.medicationDescription
          : medicationDescription // ignore: cast_nullable_to_non_nullable
              as MedicationDescription?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as Instructions?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicationDescriptionCopyWith<$Res>? get medicationDescription {
    if (_value.medicationDescription == null) {
      return null;
    }

    return $MedicationDescriptionCopyWith<$Res>(_value.medicationDescription!,
        (value) {
      return _then(_value.copyWith(medicationDescription: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructionsCopyWith<$Res>? get instructions {
    if (_value.instructions == null) {
      return null;
    }

    return $InstructionsCopyWith<$Res>(_value.instructions!, (value) {
      return _then(_value.copyWith(instructions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MedicationModelCopyWith<$Res>
    implements $MedicationModelCopyWith<$Res> {
  factory _$$_MedicationModelCopyWith(
          _$_MedicationModel value, $Res Function(_$_MedicationModel) then) =
      __$$_MedicationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MedicationDescription? medicationDescription,
      Instructions? instructions,
      String? notes});

  @override
  $MedicationDescriptionCopyWith<$Res>? get medicationDescription;
  @override
  $InstructionsCopyWith<$Res>? get instructions;
}

/// @nodoc
class __$$_MedicationModelCopyWithImpl<$Res>
    extends _$MedicationModelCopyWithImpl<$Res, _$_MedicationModel>
    implements _$$_MedicationModelCopyWith<$Res> {
  __$$_MedicationModelCopyWithImpl(
      _$_MedicationModel _value, $Res Function(_$_MedicationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicationDescription = freezed,
    Object? instructions = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_MedicationModel(
      medicationDescription: freezed == medicationDescription
          ? _value.medicationDescription
          : medicationDescription // ignore: cast_nullable_to_non_nullable
              as MedicationDescription?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as Instructions?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicationModel implements _MedicationModel {
  _$_MedicationModel(
      {this.medicationDescription, this.instructions, this.notes = ''});

  factory _$_MedicationModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicationModelFromJson(json);

  @override
  final MedicationDescription? medicationDescription;
  @override
  final Instructions? instructions;
  @override
  @JsonKey()
  final String? notes;

  @override
  String toString() {
    return 'MedicationModel(medicationDescription: $medicationDescription, instructions: $instructions, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicationModel &&
            (identical(other.medicationDescription, medicationDescription) ||
                other.medicationDescription == medicationDescription) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, medicationDescription, instructions, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicationModelCopyWith<_$_MedicationModel> get copyWith =>
      __$$_MedicationModelCopyWithImpl<_$_MedicationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicationModelToJson(
      this,
    );
  }
}

abstract class _MedicationModel implements MedicationModel {
  factory _MedicationModel(
      {final MedicationDescription? medicationDescription,
      final Instructions? instructions,
      final String? notes}) = _$_MedicationModel;

  factory _MedicationModel.fromJson(Map<String, dynamic> json) =
      _$_MedicationModel.fromJson;

  @override
  MedicationDescription? get medicationDescription;
  @override
  Instructions? get instructions;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$_MedicationModelCopyWith<_$_MedicationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
