import 'package:freezed_annotation/freezed_annotation.dart';
part 'aggravating_factors_model.freezed.dart';
part 'aggravating_factors_model.g.dart';

@freezed
class AggravatingFactorsModel with _$AggravatingFactorsModel{
 factory AggravatingFactorsModel({
 @Default('')String aggravatingFactorName,
 @Default('')String aggravatingFactorIcon,
 @Default(0)int aggravatingFactorNumber,
}) =_AggravatingFactorsModel;
 factory AggravatingFactorsModel.fromJson(Map<String, dynamic> json)=> _$AggravatingFactorsModelFromJson(json);
}