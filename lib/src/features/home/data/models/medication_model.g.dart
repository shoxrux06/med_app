// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicationModel _$$_MedicationModelFromJson(Map<String, dynamic> json) =>
    _$_MedicationModel(
      medicationDescription: json['medicationDescription'] == null
          ? null
          : MedicationDescription.fromJson(
              json['medicationDescription'] as Map<String, dynamic>),
      instructions: json['instructions'] == null
          ? null
          : Instructions.fromJson(json['instructions'] as Map<String, dynamic>),
      notes: json['notes'] as String? ?? '',
    );

Map<String, dynamic> _$$_MedicationModelToJson(_$_MedicationModel instance) =>
    <String, dynamic>{
      'medicationDescription': instance.medicationDescription,
      'instructions': instance.instructions,
      'notes': instance.notes,
    };
