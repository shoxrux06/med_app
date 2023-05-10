// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordModel _$$_RecordModelFromJson(Map<String, dynamic> json) =>
    _$_RecordModel(
      id: json['id'] as int? ?? 0,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      painStatusNumber: json['painStatusNumber'] as int? ?? 0,
      painLocation: json['painLocation'] == null
          ? null
          : LocationModel.fromJson(
              json['painLocation'] as Map<String, dynamic>),
      symptoms: json['symptoms'] == null
          ? null
          : SymptomsModel.fromJson(json['symptoms'] as Map<String, dynamic>),
      characteristics: json['characteristics'] == null
          ? null
          : CharacteristicsModel.fromJson(
              json['characteristics'] as Map<String, dynamic>),
      aggravatingFactors: json['aggravatingFactors'] == null
          ? null
          : AggravatingFactorsModel.fromJson(
              json['aggravatingFactors'] as Map<String, dynamic>),
      medications: json['medications'] == null
          ? null
          : MedicationModel.fromJson(
              json['medications'] as Map<String, dynamic>),
      environment: json['environment'] == null
          ? null
          : EnvironmentModel.fromJson(
              json['environment'] as Map<String, dynamic>),
      notes: json['notes'] as String? ?? '',
    );

Map<String, dynamic> _$$_RecordModelToJson(_$_RecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime?.toIso8601String(),
      'painStatusNumber': instance.painStatusNumber,
      'painLocation': instance.painLocation,
      'symptoms': instance.symptoms,
      'characteristics': instance.characteristics,
      'aggravatingFactors': instance.aggravatingFactors,
      'medications': instance.medications,
      'environment': instance.environment,
      'notes': instance.notes,
    };
