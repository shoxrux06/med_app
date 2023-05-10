import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'environment_model.freezed.dart';
part 'environment_model.g.dart';

@freezed
class EnvironmentModel with _$EnvironmentModel {
 factory EnvironmentModel({
  @Default('') String environmentName,
  @Default('') String environmentIcon,
  @Default(0) int environmentNumber,
}) =_EnvironmentModel;

 factory EnvironmentModel.fromJson(Map<String, dynamic> json) => _$EnvironmentModelFromJson(json);

}