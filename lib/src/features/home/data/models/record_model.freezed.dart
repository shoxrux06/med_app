// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordModel _$RecordModelFromJson(Map<String, dynamic> json) {
  return _RecordModel.fromJson(json);
}

/// @nodoc
mixin _$RecordModel {
  int get id => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  int get painStatusNumber => throw _privateConstructorUsedError;
  LocationModel? get painLocation => throw _privateConstructorUsedError;
  SymptomsModel? get symptoms => throw _privateConstructorUsedError;
  CharacteristicsModel? get characteristics =>
      throw _privateConstructorUsedError;
  AggravatingFactorsModel? get aggravatingFactors =>
      throw _privateConstructorUsedError;
  MedicationModel? get medications => throw _privateConstructorUsedError;
  EnvironmentModel? get environment => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordModelCopyWith<RecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordModelCopyWith<$Res> {
  factory $RecordModelCopyWith(
          RecordModel value, $Res Function(RecordModel) then) =
      _$RecordModelCopyWithImpl<$Res, RecordModel>;
  @useResult
  $Res call(
      {int id,
      DateTime? dateTime,
      int painStatusNumber,
      LocationModel? painLocation,
      SymptomsModel? symptoms,
      CharacteristicsModel? characteristics,
      AggravatingFactorsModel? aggravatingFactors,
      MedicationModel? medications,
      EnvironmentModel? environment,
      String notes});

  $LocationModelCopyWith<$Res>? get painLocation;
  $SymptomsModelCopyWith<$Res>? get symptoms;
  $CharacteristicsModelCopyWith<$Res>? get characteristics;
  $AggravatingFactorsModelCopyWith<$Res>? get aggravatingFactors;
  $MedicationModelCopyWith<$Res>? get medications;
  $EnvironmentModelCopyWith<$Res>? get environment;
}

/// @nodoc
class _$RecordModelCopyWithImpl<$Res, $Val extends RecordModel>
    implements $RecordModelCopyWith<$Res> {
  _$RecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = freezed,
    Object? painStatusNumber = null,
    Object? painLocation = freezed,
    Object? symptoms = freezed,
    Object? characteristics = freezed,
    Object? aggravatingFactors = freezed,
    Object? medications = freezed,
    Object? environment = freezed,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      painStatusNumber: null == painStatusNumber
          ? _value.painStatusNumber
          : painStatusNumber // ignore: cast_nullable_to_non_nullable
              as int,
      painLocation: freezed == painLocation
          ? _value.painLocation
          : painLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      symptoms: freezed == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as SymptomsModel?,
      characteristics: freezed == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as CharacteristicsModel?,
      aggravatingFactors: freezed == aggravatingFactors
          ? _value.aggravatingFactors
          : aggravatingFactors // ignore: cast_nullable_to_non_nullable
              as AggravatingFactorsModel?,
      medications: freezed == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as MedicationModel?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as EnvironmentModel?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get painLocation {
    if (_value.painLocation == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.painLocation!, (value) {
      return _then(_value.copyWith(painLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SymptomsModelCopyWith<$Res>? get symptoms {
    if (_value.symptoms == null) {
      return null;
    }

    return $SymptomsModelCopyWith<$Res>(_value.symptoms!, (value) {
      return _then(_value.copyWith(symptoms: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacteristicsModelCopyWith<$Res>? get characteristics {
    if (_value.characteristics == null) {
      return null;
    }

    return $CharacteristicsModelCopyWith<$Res>(_value.characteristics!,
        (value) {
      return _then(_value.copyWith(characteristics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AggravatingFactorsModelCopyWith<$Res>? get aggravatingFactors {
    if (_value.aggravatingFactors == null) {
      return null;
    }

    return $AggravatingFactorsModelCopyWith<$Res>(_value.aggravatingFactors!,
        (value) {
      return _then(_value.copyWith(aggravatingFactors: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicationModelCopyWith<$Res>? get medications {
    if (_value.medications == null) {
      return null;
    }

    return $MedicationModelCopyWith<$Res>(_value.medications!, (value) {
      return _then(_value.copyWith(medications: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentModelCopyWith<$Res>? get environment {
    if (_value.environment == null) {
      return null;
    }

    return $EnvironmentModelCopyWith<$Res>(_value.environment!, (value) {
      return _then(_value.copyWith(environment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecordModelCopyWith<$Res>
    implements $RecordModelCopyWith<$Res> {
  factory _$$_RecordModelCopyWith(
          _$_RecordModel value, $Res Function(_$_RecordModel) then) =
      __$$_RecordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime? dateTime,
      int painStatusNumber,
      LocationModel? painLocation,
      SymptomsModel? symptoms,
      CharacteristicsModel? characteristics,
      AggravatingFactorsModel? aggravatingFactors,
      MedicationModel? medications,
      EnvironmentModel? environment,
      String notes});

  @override
  $LocationModelCopyWith<$Res>? get painLocation;
  @override
  $SymptomsModelCopyWith<$Res>? get symptoms;
  @override
  $CharacteristicsModelCopyWith<$Res>? get characteristics;
  @override
  $AggravatingFactorsModelCopyWith<$Res>? get aggravatingFactors;
  @override
  $MedicationModelCopyWith<$Res>? get medications;
  @override
  $EnvironmentModelCopyWith<$Res>? get environment;
}

/// @nodoc
class __$$_RecordModelCopyWithImpl<$Res>
    extends _$RecordModelCopyWithImpl<$Res, _$_RecordModel>
    implements _$$_RecordModelCopyWith<$Res> {
  __$$_RecordModelCopyWithImpl(
      _$_RecordModel _value, $Res Function(_$_RecordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = freezed,
    Object? painStatusNumber = null,
    Object? painLocation = freezed,
    Object? symptoms = freezed,
    Object? characteristics = freezed,
    Object? aggravatingFactors = freezed,
    Object? medications = freezed,
    Object? environment = freezed,
    Object? notes = null,
  }) {
    return _then(_$_RecordModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      painStatusNumber: null == painStatusNumber
          ? _value.painStatusNumber
          : painStatusNumber // ignore: cast_nullable_to_non_nullable
              as int,
      painLocation: freezed == painLocation
          ? _value.painLocation
          : painLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      symptoms: freezed == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as SymptomsModel?,
      characteristics: freezed == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as CharacteristicsModel?,
      aggravatingFactors: freezed == aggravatingFactors
          ? _value.aggravatingFactors
          : aggravatingFactors // ignore: cast_nullable_to_non_nullable
              as AggravatingFactorsModel?,
      medications: freezed == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as MedicationModel?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as EnvironmentModel?,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordModel implements _RecordModel {
  const _$_RecordModel(
      {this.id = 0,
      this.dateTime,
      this.painStatusNumber = 0,
      this.painLocation,
      this.symptoms,
      this.characteristics,
      this.aggravatingFactors,
      this.medications,
      this.environment,
      this.notes = ''});

  factory _$_RecordModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecordModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final DateTime? dateTime;
  @override
  @JsonKey()
  final int painStatusNumber;
  @override
  final LocationModel? painLocation;
  @override
  final SymptomsModel? symptoms;
  @override
  final CharacteristicsModel? characteristics;
  @override
  final AggravatingFactorsModel? aggravatingFactors;
  @override
  final MedicationModel? medications;
  @override
  final EnvironmentModel? environment;
  @override
  @JsonKey()
  final String notes;

  @override
  String toString() {
    return 'RecordModel(id: $id, dateTime: $dateTime, painStatusNumber: $painStatusNumber, painLocation: $painLocation, symptoms: $symptoms, characteristics: $characteristics, aggravatingFactors: $aggravatingFactors, medications: $medications, environment: $environment, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.painStatusNumber, painStatusNumber) ||
                other.painStatusNumber == painStatusNumber) &&
            (identical(other.painLocation, painLocation) ||
                other.painLocation == painLocation) &&
            (identical(other.symptoms, symptoms) ||
                other.symptoms == symptoms) &&
            (identical(other.characteristics, characteristics) ||
                other.characteristics == characteristics) &&
            (identical(other.aggravatingFactors, aggravatingFactors) ||
                other.aggravatingFactors == aggravatingFactors) &&
            (identical(other.medications, medications) ||
                other.medications == medications) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dateTime,
      painStatusNumber,
      painLocation,
      symptoms,
      characteristics,
      aggravatingFactors,
      medications,
      environment,
      notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordModelCopyWith<_$_RecordModel> get copyWith =>
      __$$_RecordModelCopyWithImpl<_$_RecordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordModelToJson(
      this,
    );
  }
}

abstract class _RecordModel implements RecordModel {
  const factory _RecordModel(
      {final int id,
      final DateTime? dateTime,
      final int painStatusNumber,
      final LocationModel? painLocation,
      final SymptomsModel? symptoms,
      final CharacteristicsModel? characteristics,
      final AggravatingFactorsModel? aggravatingFactors,
      final MedicationModel? medications,
      final EnvironmentModel? environment,
      final String notes}) = _$_RecordModel;

  factory _RecordModel.fromJson(Map<String, dynamic> json) =
      _$_RecordModel.fromJson;

  @override
  int get id;
  @override
  DateTime? get dateTime;
  @override
  int get painStatusNumber;
  @override
  LocationModel? get painLocation;
  @override
  SymptomsModel? get symptoms;
  @override
  CharacteristicsModel? get characteristics;
  @override
  AggravatingFactorsModel? get aggravatingFactors;
  @override
  MedicationModel? get medications;
  @override
  EnvironmentModel? get environment;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$$_RecordModelCopyWith<_$_RecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
