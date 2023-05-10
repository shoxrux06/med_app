import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/record_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({RecordModel? recordModel}) = Initial;
}
