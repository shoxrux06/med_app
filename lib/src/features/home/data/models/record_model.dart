import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/src/features/home/data/models/aggravating_factors_model.dart';
import 'package:medical_app/src/features/home/data/models/characteristic_model.dart';
import 'package:medical_app/src/features/home/data/models/environment_model.dart';
import 'package:medical_app/src/features/home/data/models/medication_model.dart';
import 'package:medical_app/src/features/home/data/models/location_model.dart';
import 'package:medical_app/src/features/home/data/models/symptoms_model.dart';
import 'dart:convert';
part 'record_model.freezed.dart';
part 'record_model.g.dart';

@freezed
class RecordModel with _$RecordModel {
  const factory RecordModel({
    @Default(0) int id,
    String? dateTime,
    @Default(0)int painStatusNumber,
    @Default([])List<LocationModel> painLocationList,
    @Default([])List<SymptomsModel> symptomsList,
    @Default([])List<CharacteristicsModel> characteristicList,
    @Default([])List<AggravatingFactorsModel> aggravatingFactorsList,
    @Default([])List<MedicationModel> medicationsList,
    @Default([])List<EnvironmentModel> environmentList,
    @Default('')String notes,
}) = _RecordModel;

  factory RecordModel.fromJson(Map<String, dynamic> json) => _$RecordModelFromJson(json);
}



