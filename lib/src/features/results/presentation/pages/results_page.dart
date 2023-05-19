import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:medical_app/src/features/results/presentation/resultPage_bodys/body_diogramma.dart';
import 'package:medical_app/src/features/results/presentation/resultPage_bodys/body_insights.dart';
import 'package:medical_app/src/features/results/presentation/resultPage_bodys/body_kalendar.dart';
import 'package:medical_app/src/features/results/presentation/resultPage_bodys/body_mundarija.dart';
import 'package:medical_app/src/features/results/presentation/resultPage_bodys/body_natija.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

final List<String> list = <String>[
  'So\'ngi 30 kun',
  'So\'ngi 7 kun',
  'Hamma vaqt',
  'Tanlash'
];

class _ResultsPageState extends State<ResultsPage>
    with TickerProviderStateMixin {
  TabController? tabControll3r;
  @override
  void initState() {
    super.initState();
    tabControll3r = TabController(length: 5, vsync: this);
  }

  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          leading: const SizedBox(),
          backgroundColor: AppColors.bluEAccent,
          title: const Text(
            'Natijalar',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: AppColors.bluEAccent,
                child: TabBar(
                  splashFactory: NoSplash.splashFactory,
                  labelColor: AppColors.white,
                  unselectedLabelColor: Colors.white60,
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  splashBorderRadius: BorderRadius.circular(100),
                  indicatorWeight: 2,
                  labelPadding: EdgeInsets.zero,
                  controller: tabControll3r,
                  indicatorColor: AppColors.white,
                  onTap: (value) {
                    debugPrint('tap:$value');
                    setState(() {});
                  },
                  tabs: const [
                    Tab(
                      text: 'INSIGHTS',
                    ),
                    Tab(
                      text: 'MUNDARIJA',
                    ),
                    Tab(
                      text: 'DIAGRAMMA',
                    ),
                    Tab(
                      text: 'KALENDAR',
                    ),
                    Tab(
                      text: 'NATIJA  ',
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    '0/0 Natija ko\'rsatilgan ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blacK54,
                        fontSize: 16),
                  ),
                  const SizedBox(),
                  DropdownButton<String>(
                    dropdownColor: AppColors.white,
                    value: dropdownValue,
                    icon: const Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 30,
                      color: AppColors.blacK54,
                    ),
                    elevation: 0,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.blacK54,
                    ),
                    underline: Container(
                      height: 2,
                      color: AppColors.blacK54,
                    ),
                    onChanged: (String? newValue) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: TabBarView(controller: tabControll3r, children: const [
                InsightsBody(),
                MundarijaBodys(),
                DiogrammaBodys(),
                KalendarBodys(),
                NatijaBodys()
              ]),
            )
          ],
        ));
  }
}
