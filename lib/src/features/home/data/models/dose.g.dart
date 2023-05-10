// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dose _$$_DoseFromJson(Map<String, dynamic> json) => _$_Dose(
      doseAmount: json['doseAmount'] as int? ?? 0,
      unitOfTime: json['unitOfTime'] == null
          ? null
          : UnitOfTime.fromJson(json['unitOfTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DoseToJson(_$_Dose instance) => <String, dynamic>{
      'doseAmount': instance.doseAmount,
      'unitOfTime': instance.unitOfTime,
    };
