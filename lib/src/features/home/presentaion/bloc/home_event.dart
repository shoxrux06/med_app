import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/src/features/home/data/models/record_model.dart';
part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialEvent() = HomeInitialEvent;
  const factory HomeEvent.togglePainLocationEvent(int index) = TogglePainLocationEvent;
  const factory HomeEvent.toggleSymptomsEvent(int index) = TogglePainSymptomsEvent;
  const factory HomeEvent.togglePainSymptomsEvent(int index) = ToggleSymptomsEvent;
  const factory HomeEvent.togglePainCharacteristicEvent(int index) = TogglePainCharacteristicEvent;
  const factory HomeEvent.togglePainAggravatingFactorsEvent(int index) = TogglePainAggravatingFactorsEvent;
  const factory HomeEvent.insertRecordModel(RecordModel recordModel) = InserRecordModelEvent;
}
