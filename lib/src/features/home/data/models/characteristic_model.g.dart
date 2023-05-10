// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characteristic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacteristicsModel _$$_CharacteristicsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CharacteristicsModel(
      characteristicName: json['characteristicName'] as String? ?? '',
      characteristicIcon: json['characteristicIcon'] as String? ?? '',
      characteristicNumber: json['characteristicNumber'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CharacteristicsModelToJson(
        _$_CharacteristicsModel instance) =>
    <String, dynamic>{
      'characteristicName': instance.characteristicName,
      'characteristicIcon': instance.characteristicIcon,
      'characteristicNumber': instance.characteristicNumber,
    };
