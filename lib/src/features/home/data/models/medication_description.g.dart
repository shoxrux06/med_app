// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicationDescription _$$_MedicationDescriptionFromJson(
        Map<String, dynamic> json) =>
    _$_MedicationDescription(
      brandName: json['brandName'] as String? ?? '',
      medicationName: json['medicationName'] as String? ?? '',
      unitOfWeight: json['unitOfWeight'] == null
          ? null
          : UnitOfWeight.fromJson(json['unitOfWeight'] as Map<String, dynamic>),
      unitOfForm: json['unitOfForm'] == null
          ? null
          : UnitOfForm.fromJson(json['unitOfForm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MedicationDescriptionToJson(
        _$_MedicationDescription instance) =>
    <String, dynamic>{
      'brandName': instance.brandName,
      'medicationName': instance.medicationName,
      'unitOfWeight': instance.unitOfWeight,
      'unitOfForm': instance.unitOfForm,
    };
