import 'package:freezed_annotation/freezed_annotation.dart';
import 'dose.dart';

part 'instructions.freezed.dart';
part 'instructions.g.dart';
@freezed
class Instructions  with _$Instructions{
  factory Instructions({
    DateTime? startDateTime,
    DateTime? endDateTime,
    @Default('') String takeAs,
    Dose? dose,
    @Default('') String additionalInstructions,
}) = _Instructions;

  factory Instructions.fromJson(Map<String, dynamic> json) => _$InstructionsFromJson(json);
}