// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicationDescription _$MedicationDescriptionFromJson(
    Map<String, dynamic> json) {
  return _MedicationDescription.fromJson(json);
}

/// @nodoc
mixin _$MedicationDescription {
  String get brandName => throw _privateConstructorUsedError;
  String get medicationName => throw _privateConstructorUsedError;
  UnitOfWeight? get unitOfWeight => throw _privateConstructorUsedError;
  UnitOfForm? get unitOfForm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicationDescriptionCopyWith<MedicationDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicationDescriptionCopyWith<$Res> {
  factory $MedicationDescriptionCopyWith(MedicationDescription value,
          $Res Function(MedicationDescription) then) =
      _$MedicationDescriptionCopyWithImpl<$Res, MedicationDescription>;
  @useResult
  $Res call(
      {String brandName,
      String medicationName,
      UnitOfWeight? unitOfWeight,
      UnitOfForm? unitOfForm});

  $UnitOfWeightCopyWith<$Res>? get unitOfWeight;
  $UnitOfFormCopyWith<$Res>? get unitOfForm;
}

/// @nodoc
class _$MedicationDescriptionCopyWithImpl<$Res,
        $Val extends MedicationDescription>
    implements $MedicationDescriptionCopyWith<$Res> {
  _$MedicationDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandName = null,
    Object? medicationName = null,
    Object? unitOfWeight = freezed,
    Object? unitOfForm = freezed,
  }) {
    return _then(_value.copyWith(
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      medicationName: null == medicationName
          ? _value.medicationName
          : medicationName // ignore: cast_nullable_to_non_nullable
              as String,
      unitOfWeight: freezed == unitOfWeight
          ? _value.unitOfWeight
          : unitOfWeight // ignore: cast_nullable_to_non_nullable
              as UnitOfWeight?,
      unitOfForm: freezed == unitOfForm
          ? _value.unitOfForm
          : unitOfForm // ignore: cast_nullable_to_non_nullable
              as UnitOfForm?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfWeightCopyWith<$Res>? get unitOfWeight {
    if (_value.unitOfWeight == null) {
      return null;
    }

    return $UnitOfWeightCopyWith<$Res>(_value.unitOfWeight!, (value) {
      return _then(_value.copyWith(unitOfWeight: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitOfFormCopyWith<$Res>? get unitOfForm {
    if (_value.unitOfForm == null) {
      return null;
    }

    return $UnitOfFormCopyWith<$Res>(_value.unitOfForm!, (value) {
      return _then(_value.copyWith(unitOfForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MedicationDescriptionCopyWith<$Res>
    implements $MedicationDescriptionCopyWith<$Res> {
  factory _$$_MedicationDescriptionCopyWith(_$_MedicationDescription value,
          $Res Function(_$_MedicationDescription) then) =
      __$$_MedicationDescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String brandName,
      String medicationName,
      UnitOfWeight? unitOfWeight,
      UnitOfForm? unitOfForm});

  @override
  $UnitOfWeightCopyWith<$Res>? get unitOfWeight;
  @override
  $UnitOfFormCopyWith<$Res>? get unitOfForm;
}

/// @nodoc
class __$$_MedicationDescriptionCopyWithImpl<$Res>
    extends _$MedicationDescriptionCopyWithImpl<$Res, _$_MedicationDescription>
    implements _$$_MedicationDescriptionCopyWith<$Res> {
  __$$_MedicationDescriptionCopyWithImpl(_$_MedicationDescription _value,
      $Res Function(_$_MedicationDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandName = null,
    Object? medicationName = null,
    Object? unitOfWeight = freezed,
    Object? unitOfForm = freezed,
  }) {
    return _then(_$_MedicationDescription(
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      medicationName: null == medicationName
          ? _value.medicationName
          : medicationName // ignore: cast_nullable_to_non_nullable
              as String,
      unitOfWeight: freezed == unitOfWeight
          ? _value.unitOfWeight
          : unitOfWeight // ignore: cast_nullable_to_non_nullable
              as UnitOfWeight?,
      unitOfForm: freezed == unitOfForm
          ? _value.unitOfForm
          : unitOfForm // ignore: cast_nullable_to_non_nullable
              as UnitOfForm?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicationDescription implements _MedicationDescription {
  _$_MedicationDescription(
      {this.brandName = '',
      this.medicationName = '',
      this.unitOfWeight,
      this.unitOfForm});

  factory _$_MedicationDescription.fromJson(Map<String, dynamic> json) =>
      _$$_MedicationDescriptionFromJson(json);

  @override
  @JsonKey()
  final String brandName;
  @override
  @JsonKey()
  final String medicationName;
  @override
  final UnitOfWeight? unitOfWeight;
  @override
  final UnitOfForm? unitOfForm;

  @override
  String toString() {
    return 'MedicationDescription(brandName: $brandName, medicationName: $medicationName, unitOfWeight: $unitOfWeight, unitOfForm: $unitOfForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicationDescription &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.medicationName, medicationName) ||
                other.medicationName == medicationName) &&
            (identical(other.unitOfWeight, unitOfWeight) ||
                other.unitOfWeight == unitOfWeight) &&
            (identical(other.unitOfForm, unitOfForm) ||
                other.unitOfForm == unitOfForm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, brandName, medicationName, unitOfWeight, unitOfForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicationDescriptionCopyWith<_$_MedicationDescription> get copyWith =>
      __$$_MedicationDescriptionCopyWithImpl<_$_MedicationDescription>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicationDescriptionToJson(
      this,
    );
  }
}

abstract class _MedicationDescription implements MedicationDescription {
  factory _MedicationDescription(
      {final String brandName,
      final String medicationName,
      final UnitOfWeight? unitOfWeight,
      final UnitOfForm? unitOfForm}) = _$_MedicationDescription;

  factory _MedicationDescription.fromJson(Map<String, dynamic> json) =
      _$_MedicationDescription.fromJson;

  @override
  String get brandName;
  @override
  String get medicationName;
  @override
  UnitOfWeight? get unitOfWeight;
  @override
  UnitOfForm? get unitOfForm;
  @override
  @JsonKey(ignore: true)
  _$$_MedicationDescriptionCopyWith<_$_MedicationDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
