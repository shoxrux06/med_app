import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/src/features/monitoring/data/models/life_and_death.dart';
import 'package:medical_app/src/features/monitoring/data/models/sicknes.dart';
import 'package:medical_app/src/features/monitoring/widgets/custom_table.dart';
import 'package:medical_app/src/features/monitoring/widgets/custom_table_two.dart';

import '../../widgets/custom_data_table.dart';

class MonitoringPage extends StatefulWidget {
  const MonitoringPage({Key? key}) : super(key: key);

  @override
  State<MonitoringPage> createState() => _MonitoringPageState();
}

class _MonitoringPageState extends State<MonitoringPage> {
  final myList = <Sickness>[
    Sickness('A (beş haqiqiy kasalliklar guruhi))', '2020', '46073'),
    Sickness('Tuberkulyoz', '2020', '16813'),
    Sickness('Sifilis', '2020', '2678'),
    Sickness('Virusli gepatitlar', '2020', '14512'),
    Sickness('HIV-infeksiyasi', '2020', '7982'),
    Sickness('Qora jihozli ishal', '2020', '5157'),
    Sickness('Dengiz palovchiligi', '2020', '1919'),
    Sickness('Kumli suv ichish xavfi', '2020', '3634'),
    Sickness('Qarang\'oq otish', '2020', '1844'),
    Sickness('Akut respirator infeksiyasi', '2020', '70806'),
    Sickness('Angina', '2020', '23837'),
    Sickness('O\'tkir kasalliklar', '2020', '30036'),
    Sickness('Akut vaso-obstruktiv bronxit', '2020', '6985'),
    Sickness('Astma', '2020', '5580'),
    Sickness('Kronik obstruktiv bronxit', '2020', '14799'),
    Sickness('Pnevmoniya', '2020', '6785'),
    Sickness('Quyosh oqibatlari', '2020', '428'),
    Sickness('Kasalliklar olimi (jumladan COVID-19))', '2020', '75656'),
  ];

  final lifeAndDeathList = [
    LifeAndDeath('2010', '109392'),
    LifeAndDeath('2011', '107985'),
    LifeAndDeath('2012', '107408'),
    LifeAndDeath('2013', '107109'),
    LifeAndDeath('2014', '107208'),
    LifeAndDeath('2015', '107345'),
    LifeAndDeath('2016', '107448'),
    LifeAndDeath('2017', '107482'),
    LifeAndDeath('2018', '107452'),
    LifeAndDeath('2019', '107385'),
    LifeAndDeath('2020', '113201'),
  ];

  final lifeAndDeathListTwo = [
    LifeAndDeath('2010', '1117843'),
    LifeAndDeath('2011', '1124459'),
    LifeAndDeath('2012', '1129948'),
    LifeAndDeath('2013', '1133595'),
    LifeAndDeath('2014', '1136955'),
    LifeAndDeath('2015', '1140948'),
    LifeAndDeath('2016', '1145057'),
    LifeAndDeath('2017', '1150149'),
    LifeAndDeath('2018', '1155159'),
    LifeAndDeath('2019', '1160485'),
    LifeAndDeath('2020', '1165400'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            CustomDataTable(
              sicknessList: myList,
            ),
            CustomTable(
              lifeList: lifeAndDeathList,
            ),
            CustomTableTwo(
              lifeList: lifeAndDeathList,
            )
          ],
        ),
      )),
    );
  }
}
