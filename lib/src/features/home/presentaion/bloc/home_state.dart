import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_app/src/features/home/data/models/aggravating_factors_model.dart';
import 'package:medical_app/src/features/home/data/models/characteristic_model.dart';
import 'package:medical_app/src/features/home/data/models/environment_model.dart';
import 'package:medical_app/src/features/home/data/models/location_model.dart';
import 'package:medical_app/src/features/home/data/models/medication_model.dart';
import 'package:medical_app/src/features/home/data/models/symptoms_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default(0) int painLocationCount,
    @Default([false, false,false,false,false, false,false,false]) List<bool> painLocationCheckbox,
    @Default([false, false,false,false,false, false,false,false,false]) List<bool> associatedSymptomsCheckbox,
    @Default([]) List<LocationModel> locationModelList,
    @Default([]) List<SymptomsModel> associatedSymptomsModelList,
    @Default([]) List<LocationModel> selectedLocationModelList,
    @Default([]) List<SymptomsModel> selectedAssociatedSymptomsModelList,
    @Default([]) List<CharacteristicsModel> selectedCharacteristicModelList,
    @Default([]) List<AggravatingFactorsModel> selectedAggravatingFactorsModelList,
    @Default([]) List<MedicationModel> selectedMedicalModelList,
    @Default([]) List<EnvironmentModel> selectedEnvironmentsModelList,
    @Default('') String notes,
  }) = Initial;

}
