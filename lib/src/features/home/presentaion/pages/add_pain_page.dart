import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_assets.dart';
import 'package:medical_app/src/core/constants/app_constants.dart';
import 'package:medical_app/src/features/home/data/models/location_model.dart';
import 'package:medical_app/src/features/home/data/models/symptoms_model.dart';
import 'package:medical_app/src/features/home/presentaion/widgets/custom_location_widget.dart';
import 'package:medical_app/src/features/home/presentaion/widgets/custom_notes_widget.dart';
import 'package:medical_app/src/features/home/presentaion/widgets/medication_item.dart';

import '../widgets/custom_aggravating_factors_widget.dart';
import '../widgets/custom_characteristic_widget.dart';
import '../widgets/custom_environment_widget.dart';
import '../widgets/custom_symptoms_widget.dart';

class AddPainPage extends StatefulWidget {
  const AddPainPage({Key? key}) : super(key: key);

  @override
  State<AddPainPage> createState() => _AddPainPageState();
}

class _AddPainPageState extends State<AddPainPage> {
  final List<LocationModel> _painLocations = [

    const LocationModel(locationName: 'Bosh',locationIcon:  AppAssets.man,locationNumber: 1),
    const LocationModel(locationName: 'Bo\'yin',locationIcon:  AppAssets.man,locationNumber: 1),
    const LocationModel(locationName: 'Yelka',locationIcon:  AppAssets.man,locationNumber: 1),
    const LocationModel(locationName: 'Orqa',locationIcon:  AppAssets.man,locationNumber: 1),
    const LocationModel(locationName: 'Tizza',locationIcon:  AppAssets.man,locationNumber: 1),
    const LocationModel(locationName: 'Oyoq',locationIcon:  AppAssets.man,locationNumber: 1),
    const LocationModel(locationName: 'Qorin',locationIcon:  AppAssets.man,locationNumber: 1),
    const LocationModel(locationName: 'Ko\'krak',locationIcon:  AppAssets.man,locationNumber: 1),
  ];
  final List<SymptomsModel> _symptomsList = [
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
  final List<String> _characteristicList = [
    'Og\'riq',
    'Yonayotgan',
    'Zerikarli',
    'Elektr toki urishi',
    'Pinlar va ignalar',
    'O\'tkir',
    'Tomir urish',
  ];
  final List<String> _factorsList = [
    'Uyqusizlik',
    'Yengil teginish/kiyim',
    'Salbiy kayfiyat',
    'O\'tirish',
    'Tik turish',
    'Stres',
    'Yurish',
    'Ob havo',
  ];
  final List<String> _medicationsList = [
    'Analgin',
  ];
  final List<String> environmentList = [
    'Yotoq',
    'Uy',
    'Xarid qilish',
    'Ish',
  ];

  final List<bool> _isCheckedLocation = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<bool> _isCheckedSymptoms = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<bool> _isCheckedCharacteristic = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<bool> _isCheckedFactors = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<bool> _isCheckedEnvironment = [
    false,
    false,
    false,
    false,
  ];
  final List<bool> _isCheckedMedications = [
    false,
  ];

  @override
  Widget build(BuildContext context) {
    print('_isCheckedLocation $_isCheckedLocation');
    return Scaffold(
      appBar: AppBar(
        title: const Text('O\'griqni qayd etish '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomLocationWidget(
                title: 'Where does it hurt?',
                subTitle: 'Locations',
                locations: _painLocations,
                isChecked: _isCheckedLocation
            ),
            CustomSymptomsWidget(
                title: 'What besides pain are you feeling?',
                subTitle: 'Other associated symptoms',
                symptomsList: _symptomsList,
                isChecked: _isCheckedSymptoms
            ),
            CustomCharacteristicWidget(
                title: 'What words best describe your pain?',
                subTitle: 'Characteristics',
                characteristicList: _characteristicList,
                isChecked: _isCheckedCharacteristic
            ),

            CustomAggravatingFactorsWidget(
                title: 'What made your pain worse?',
                subTitle: 'Aggravating Factors',
                factorsList: _factorsList,
                isChecked: _isCheckedFactors
            ),
            MedicationItem(
              title: 'What medications did you take?',
              subTitle: 'Medications',
              painLocations: _medicationsList,
              isChecked: _isCheckedMedications,
            ),
            // InterventionItem(title: 'What besides medications did you try?',subTitle: 'Interventions', painLocations: _painLocations, isChecked: _isChecked, ),
            CustomEnvironmentWidget(
                title: 'Where were you during your pain?',
                subTitle: 'Environment',
                environmentsList: environmentList,
                isChecked: _isCheckedEnvironment),

            const CustomNotesWidget(title: 'Notes'),

            sizedBox24Height,

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)
                ),
                onPressed: () {},
                child: Text('Yozuvni saqlash va yopish'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
