// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Instructions _$$_InstructionsFromJson(Map<String, dynamic> json) =>
    _$_Instructions(
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      endDateTime: json['endDateTime'] == null
          ? null
          : DateTime.parse(json['endDateTime'] as String),
      takeAs: json['takeAs'] as String? ?? '',
      dose: json['dose'] == null
          ? null
          : Dose.fromJson(json['dose'] as Map<String, dynamic>),
      additionalInstructions: json['additionalInstructions'] as String? ?? '',
    );

Map<String, dynamic> _$$_InstructionsToJson(_$_Instructions instance) =>
    <String, dynamic>{
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'endDateTime': instance.endDateTime?.toIso8601String(),
      'takeAs': instance.takeAs,
      'dose': instance.dose,
      'additionalInstructions': instance.additionalInstructions,
    };
