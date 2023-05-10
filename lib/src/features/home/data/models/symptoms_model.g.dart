// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptoms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymptomsModel _$$_SymptomsModelFromJson(Map<String, dynamic> json) =>
    _$_SymptomsModel(
      symptomName: json['symptomName'] as String? ?? '',
      symptomIcon: json['symptomIcon'] as String? ?? '',
      symptomNumber: json['symptomNumber'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SymptomsModelToJson(_$_SymptomsModel instance) =>
    <String, dynamic>{
      'symptomName': instance.symptomName,
      'symptomIcon': instance.symptomIcon,
      'symptomNumber': instance.symptomNumber,
    };
