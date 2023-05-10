import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptoms_model.freezed.dart';
part 'symptoms_model.g.dart';

@freezed
class SymptomsModel with _$SymptomsModel{
  factory SymptomsModel({
  @Default('')String symptomName,
  @Default('')String symptomIcon,
  @Default(0)int symptomNumber,
}) = _SymptomsModel;

  factory SymptomsModel.fromJson(Map<String, dynamic> json) => _$SymptomsModelFromJson(json);
}