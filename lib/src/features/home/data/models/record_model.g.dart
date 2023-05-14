// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordModel _$$_RecordModelFromJson(Map<String, dynamic> json) =>
    _$_RecordModel(
      id: json['id'] as int? ?? 0,
      dateTime: json['dateTime'] as String?,
      painStatusNumber: json['painStatusNumber'] as int? ?? 0,
      painLocationList: (json['painLocationList'] as List<dynamic>?)
              ?.map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      symptomsList: (json['symptomsList'] as List<dynamic>?)
              ?.map((e) => SymptomsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      characteristicList: (json['characteristicList'] as List<dynamic>?)
              ?.map((e) =>
                  CharacteristicsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      aggravatingFactorsList: (json['aggravatingFactorsList'] as List<dynamic>?)
              ?.map((e) =>
                  AggravatingFactorsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      medicationsList: (json['medicationsList'] as List<dynamic>?)
              ?.map((e) => MedicationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      environmentList: (json['environmentList'] as List<dynamic>?)
              ?.map((e) => EnvironmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      notes: json['notes'] as String? ?? '',
    );

Map<String, dynamic> _$$_RecordModelToJson(_$_RecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime,
      'painStatusNumber': instance.painStatusNumber,
      'painLocationList': instance.painLocationList,
      'symptomsList': instance.symptomsList,
      'characteristicList': instance.characteristicList,
      'aggravatingFactorsList': instance.aggravatingFactorsList,
      'medicationsList': instance.medicationsList,
      'environmentList': instance.environmentList,
      'notes': instance.notes,
    };
