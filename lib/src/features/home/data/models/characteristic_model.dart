import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characteristic_model.freezed.dart';
part 'characteristic_model.g.dart';
@freezed
class CharacteristicsModel  with _$CharacteristicsModel{
  factory CharacteristicsModel({
  @Default('')String characteristicName,
  @Default('')String characteristicIcon,
  @Default(0)int characteristicNumber,
}) = _CharacteristicsModel;

  factory CharacteristicsModel.fromJson(Map<String, dynamic> json) =>_$CharacteristicsModelFromJson(json);
}