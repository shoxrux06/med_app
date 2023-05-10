import 'package:freezed_annotation/freezed_annotation.dart';
part  'unit_of_form.freezed.dart';
part 'unit_of_form.g.dart';

@freezed
class UnitOfForm with _$UnitOfForm{
  factory UnitOfForm({
    @Default('') String name,
    @Default('') String icon,
  }) = _UnitOfFrom;

  factory UnitOfForm.fromJson(Map<String, dynamic> json) => _$UnitOfFormFromJson(json);
}