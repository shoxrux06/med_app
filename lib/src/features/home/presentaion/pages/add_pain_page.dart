import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/src/core/constants/app_assets.dart';
import 'package:medical_app/src/core/constants/app_constants.dart';
import 'package:medical_app/src/core/utils/database_helper.dart';
import 'package:medical_app/src/features/home/data/models/aggravating_factors_model.dart';
import 'package:medical_app/src/features/home/data/models/characteristic_model.dart';
import 'package:medical_app/src/features/home/data/models/environment_model.dart';
import 'package:medical_app/src/features/home/data/models/location_model.dart';
import 'package:medical_app/src/features/home/data/models/medication_description.dart';
import 'package:medical_app/src/features/home/data/models/medication_model.dart';
import 'package:medical_app/src/features/home/data/models/record_model.dart';
import 'package:medical_app/src/features/home/data/models/symptoms_model.dart';
import 'package:medical_app/src/features/home/data/models/unit_of_form.dart';
import 'package:medical_app/src/features/home/data/models/unit_of_weigth.dart';
import 'package:medical_app/src/features/home/presentaion/bloc/home_bloc.dart';
import 'package:medical_app/src/features/home/presentaion/bloc/home_event.dart';
import 'package:medical_app/src/features/home/presentaion/bloc/home_state.dart';
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
  final List<SymptomsModel> _symptomsList = [
    SymptomsModel(
        symptomName: 'Bezovtalik',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Bosh aylanishi',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Noto\'g\'ri nafas olish',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Ruhiy tushkunliklar',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Ko\'ngil aynishi',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Qusish', symptomIcon: AppAssets.man, symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Ich ketish',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Hushidan ketish',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
    SymptomsModel(
        symptomName: 'Depressiya',
        symptomIcon: AppAssets.man,
        symptomNumber: 1),
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

  int incId = 1;

  @override
  void initState() {
    // TODO: implement initState
    context.read<HomeBloc>().add(const HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('_isCheckedLocation $_isCheckedLocation');
    return Scaffold(
        appBar: AppBar(
          title: const Text('O\'griqni qayd etish '),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const CustomLocationWidget(
                    title: 'Where does it hurt?',
                    subTitle: 'Locations',
                  ),
                  CustomSymptomsWidget(
                      title: 'What besides pain are you feeling?',
                      subTitle: 'Other associated symptoms',
                      symptomsList: _symptomsList,
                      isChecked: _isCheckedSymptoms),
                  CustomCharacteristicWidget(
                      title: 'What words best describe your pain?',
                      subTitle: 'Characteristics',
                      characteristicList: _characteristicList,
                      isChecked: _isCheckedCharacteristic),
                  CustomAggravatingFactorsWidget(
                      title: 'What made your pain worse?',
                      subTitle: 'Aggravating Factors',
                      factorsList: _factorsList,
                      isChecked: _isCheckedFactors),
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
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                      onPressed: () async {
                        final dbHelper = DatabaseHelper.instance;
                        context.read<HomeBloc>().add(InserRecordModelEvent(RecordModel(
                            id: incId,
                            painStatusNumber: incId,
                            dateTime: DateTime.now().toIso8601String(),
                            painLocationList: state.selectedLocationModelList,
                            symptomsList: state.selectedAssociatedSymptomsModelList,
                            characteristicList: state.selectedCharacteristicModelList,
                            aggravatingFactorsList: state.selectedAggravatingFactorsModelList,
                            medicationsList: state.selectedMedicalModelList,
                            environmentList: state.selectedEnvironmentsModelList,
                            notes: 'Notes'
                        )));
                        incId++;
                        print('incId $incId');
                        final listcon = await dbHelper.getAllRecords();
                        final listWithoutParse = await dbHelper.getAllRec();
                        print('listcon of records $listcon');
                        print('listWithoutParse of records $listWithoutParse');
                      },
                      child: const Text('Yozuvni saqlash va yopish'),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
