import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'location_model.freezed.dart';
part 'location_model.g.dart';
@freezed
class LocationModel with _$LocationModel {
 const factory LocationModel({
 @Default('')String locationName,
 @Default('')String locationIcon,
 @Default(0)int locationNumber,
})= _LocationModel;

 factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);
}

extension JsonSerializeExtension<T> on T {
 String toJsonString() => jsonEncode(const LocationModel().toJson());
}