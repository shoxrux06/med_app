import 'package:bloc/bloc.dart';
import 'package:medical_app/src/features/home/data/models/location_model.dart';
import 'package:medical_app/src/features/home/data/models/symptoms_model.dart';
import '../../../../core/utils/database_helper.dart';
import '../../data/repository/home_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DatabaseHelper databaseHelper;
  final HomeRepository homeRepository;

  HomeBloc(this.databaseHelper, this.homeRepository)
      : super(const HomeState()) {
    on<HomeInitialEvent>((event, emit) {
      final painLocations = homeRepository.getPainLocationList();
      final symptomsList = homeRepository.getSymptomsList();
      emit(HomeState(locationModelList: painLocations, associatedSymptomsModelList: symptomsList));
    });

    on<TogglePainLocationEvent>((event, emit) {
      final List<bool> newCheckboxValues = List.from(state.painLocationCheckbox);
      final painLocations = homeRepository.getPainLocationList();
      final symptomsList = homeRepository.getSymptomsList();
      newCheckboxValues[event.index] = !newCheckboxValues[event.index];
      final List<LocationModel> selectedLocationModelList = List.from(state.selectedLocationModelList);
      if (newCheckboxValues[event.index] == true) {
        selectedLocationModelList.add(painLocations[event.index]);
        emit(HomeState(selectedLocationModelList: selectedLocationModelList, associatedSymptomsCheckbox: state.associatedSymptomsCheckbox,));
        print('list --> $selectedLocationModelList');
      } else {
        selectedLocationModelList.remove(painLocations[event.index]);
        emit(HomeState(selectedLocationModelList: selectedLocationModelList,associatedSymptomsCheckbox: state.associatedSymptomsCheckbox,));
      }
      emit(HomeState(
        associatedSymptomsCheckbox: state.associatedSymptomsCheckbox,
        painLocationCheckbox: newCheckboxValues,
        selectedLocationModelList: selectedLocationModelList,
        locationModelList: painLocations,
        associatedSymptomsModelList: symptomsList,
      ));
    });

    on<ToggleSymptomsEvent>((event, emit) {
      final List<bool> newCheckboxValues = List.from(state.associatedSymptomsCheckbox);
      final painLocationList = homeRepository.getPainLocationList();
      final symptomsList = homeRepository.getSymptomsList();
      newCheckboxValues[event.index] = !newCheckboxValues[event.index];
      final List<SymptomsModel> selectedSymptomsModelList = List.from(state.selectedAssociatedSymptomsModelList);
      if (newCheckboxValues[event.index] == true) {
        selectedSymptomsModelList.add(symptomsList[event.index]);
        emit(HomeState(selectedAssociatedSymptomsModelList: selectedSymptomsModelList, painLocationCheckbox: state.painLocationCheckbox,));
        print('list --> $selectedSymptomsModelList');
      } else {
        selectedSymptomsModelList.remove(symptomsList[event.index]);
        emit(HomeState(selectedAssociatedSymptomsModelList: selectedSymptomsModelList, painLocationCheckbox: state.painLocationCheckbox,));
      }
      emit(HomeState(
        painLocationCheckbox: state.painLocationCheckbox,
        associatedSymptomsCheckbox: newCheckboxValues,
        selectedAssociatedSymptomsModelList: selectedSymptomsModelList,
        associatedSymptomsModelList: symptomsList,
        locationModelList: painLocationList,
      ));
    });

    on<InserRecordModelEvent>((event, emit)async {
      await databaseHelper.insertRecord(event.recordModel);
      final painLocations = homeRepository.getPainLocationList();
      final symptomsList = homeRepository.getSymptomsList();
      emit(HomeState(locationModelList: painLocations, associatedSymptomsModelList: symptomsList));
    });
  }
}
