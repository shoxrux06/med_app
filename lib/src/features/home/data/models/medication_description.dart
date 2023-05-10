import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/src/features/home/data/models/unit_of_form.dart';
import 'package:medical_app/src/features/home/data/models/unit_of_weigth.dart';

part 'medication_description.freezed.dart';
part 'medication_description.g.dart';

@freezed
class MedicationDescription with _$MedicationDescription {
  factory MedicationDescription({
    @Default('') String brandName,
    @Default('') String medicationName,
    UnitOfWeight? unitOfWeight,
    UnitOfForm? unitOfForm,
}) = _MedicationDescription;

  factory MedicationDescription.fromJson(Map<String, dynamic> json) => _$MedicationDescriptionFromJson(json);
}