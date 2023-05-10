import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_of_time.freezed.dart';
part 'unit_of_time.g.dart';

@freezed
class UnitOfTime with _$UnitOfTime{
  factory UnitOfTime({
    @Default(0) int number,
    @Default('') String unit,
  }) = _UnitOfTime;

  factory UnitOfTime.fromJson(Map<String, dynamic> json) => _$UnitOfTimeFromJson(json);
}