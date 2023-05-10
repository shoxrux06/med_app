import 'package:freezed_annotation/freezed_annotation.dart';
import 'instructions.dart';
import 'medication_description.dart';

part 'medication_model.freezed.dart';
part 'medication_model.g.dart';

@freezed
class MedicationModel with  _$MedicationModel{
 factory MedicationModel({
   MedicationDescription? medicationDescription,
   Instructions? instructions,
   @Default('')String? notes,
 }) = _MedicationModel;

 factory MedicationModel.fromJson(Map<String, dynamic> json) => _$MedicationModelFromJson(json);
}











