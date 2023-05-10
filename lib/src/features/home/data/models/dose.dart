import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/src/features/home/data/models/unit_of_time.dart';

part 'dose.freezed.dart';
part 'dose.g.dart';

@freezed
class Dose with _$Dose{
  factory Dose({
    @Default(0) int doseAmount,
    UnitOfTime? unitOfTime,
  }) = _Dose;

  factory Dose.fromJson(Map<String, dynamic> json) => _$DoseFromJson(json);
}