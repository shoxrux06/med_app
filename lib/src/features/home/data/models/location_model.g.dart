// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      locationName: json['locationName'] as String? ?? '',
      locationIcon: json['locationIcon'] as String? ?? '',
      locationNumber: json['locationNumber'] as int? ?? 0,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'locationName': instance.locationName,
      'locationIcon': instance.locationIcon,
      'locationNumber': instance.locationNumber,
    };
