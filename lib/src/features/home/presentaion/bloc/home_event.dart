import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_event.freezed.dart';

@freezed
class HomeEvent {
  const factory HomeEvent.selectLocationEvent() = SelectLocationEvent;
  const factory HomeEvent.selectSymptomsEvent() = SelectSymptomsEvent;
}
