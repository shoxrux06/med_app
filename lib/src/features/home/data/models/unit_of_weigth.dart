import 'package:freezed_annotation/freezed_annotation.dart';
part 'unit_of_weigth.freezed.dart';
part 'unit_of_weigth.g.dart';
@freezed
class UnitOfWeight with _$UnitOfWeight{
  factory UnitOfWeight({
    @Default(0) int number,
    @Default('') String unit,
}) = _UnitOfWeight;

  factory UnitOfWeight.fromJson(Map<String, dynamic> json) => _$UnitOfWeightFromJson(json);
}