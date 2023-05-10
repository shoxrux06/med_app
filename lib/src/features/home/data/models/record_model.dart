import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:medical_app/src/features/home/data/models/aggravating_factors_model.dart';
import 'package:medical_app/src/features/home/data/models/characteristic_model.dart';
import 'package:medical_app/src/features/home/data/models/environment_model.dart';
import 'package:medical_app/src/features/home/data/models/medication_model.dart';
import 'package:medical_app/src/features/home/data/models/location_model.dart';
import 'package:medical_app/src/features/home/data/models/symptoms_model.dart';

part 'record_model.freezed.dart';
part 'record_model.g.dart';

@freezed
class RecordModel with _$RecordModel {
  const factory RecordModel({
    @Default(0) int id,
    DateTime? dateTime,
    @Default(0)int painStatusNumber,
    LocationModel? painLocation,
    SymptomsModel? symptoms,
    CharacteristicsModel? characteristics,
    AggravatingFactorsModel? aggravatingFactors,
    MedicationModel? medications,
    EnvironmentModel? environment,
    @Default('')String notes,
}) = _RecordModel;

  factory RecordModel.fromJson(Map<String, dynamic> json) => _$RecordModelFromJson(json);
}



