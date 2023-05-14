import '../../../../core/constants/app_assets.dart';
import '../models/location_model.dart';
import '../models/symptoms_model.dart';

class HomeRepository{
  List<LocationModel> getPainLocationList(){
    final List<LocationModel> painLocations = [
      const LocationModel(locationName: 'Bosh',locationIcon:  AppAssets.man,locationNumber: 1),
      const LocationModel(locationName: 'Bo\'yin',locationIcon:  AppAssets.man,locationNumber: 1),
      const LocationModel(locationName: 'Yelka',locationIcon:  AppAssets.man,locationNumber: 1),
      const LocationModel(locationName: 'Orqa',locationIcon:  AppAssets.man,locationNumber: 1),
      const LocationModel(locationName: 'Tizza',locationIcon:  AppAssets.man,locationNumber: 1),
      const LocationModel(locationName: 'Oyoq',locationIcon:  AppAssets.man,locationNumber: 1),
      const LocationModel(locationName: 'Qorin',locationIcon:  AppAssets.man,locationNumber: 1),
      const LocationModel(locationName: 'Ko\'krak',locationIcon:  AppAssets.man,locationNumber: 1),
    ];
    return painLocations;
  }

  List<SymptomsModel> getSymptomsList(){
    final List<SymptomsModel> symptomsList = [
      SymptomsModel(symptomName: 'Bezovtalik',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Bosh aylanishi',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Noto\'g\'ri nafas olish',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Ruhiy tushkunliklar',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Ko\'ngil aynishi',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Qusish',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Ich ketish',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Hushidan ketish',symptomIcon: AppAssets.man,symptomNumber: 1),
      SymptomsModel(symptomName: 'Depressiya',symptomIcon: AppAssets.man,symptomNumber: 1),
    ];
    return symptomsList;
  }
  List<String> getCharacteristicList(){
    final List<String> characteristicList = [
      'Og\'riq',
      'Yonayotgan',
      'Zerikarli',
      'Elektr toki urishi',
      'Pinlar va ignalar',
      'O\'tkir',
      'Tomir urish',
    ];
    return characteristicList;

  }
  getFactorsList(){}
  getMedicationsList(){}
  getEnvironmentList(){}
}