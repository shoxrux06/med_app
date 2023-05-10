// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EnvironmentModel _$$_EnvironmentModelFromJson(Map<String, dynamic> json) =>
    _$_EnvironmentModel(
      environmentName: json['environmentName'] as String? ?? '',
      environmentIcon: json['environmentIcon'] as String? ?? '',
      environmentNumber: json['environmentNumber'] as int? ?? 0,
    );

Map<String, dynamic> _$$_EnvironmentModelToJson(_$_EnvironmentModel instance) =>
    <String, dynamic>{
      'environmentName': instance.environmentName,
      'environmentIcon': instance.environmentIcon,
      'environmentNumber': instance.environmentNumber,
    };
