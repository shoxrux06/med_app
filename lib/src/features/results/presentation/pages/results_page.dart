import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Natijalar'),
          elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: TabBar(
                splashFactory: NoSplash.splashFactory,
                labelColor: AppColors.bluEAccent,
                unselectedLabelColor: Colors.grey,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                indicatorSize: TabBarIndicatorSize.label,
                splashBorderRadius: BorderRadius.circular(100),
                indicatorWeight: 2,
                labelPadding: EdgeInsets.zero,
                controller: tabControll3r,
                indicatorColor: AppColors.bluEAccent,
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
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white70,
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
                          color: AppColors.blacK54),
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
            ),
            Expanded(
              flex: 15,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
                      width: width * .97,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Og\'riq darajasi ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                              left: 10,
                              top: 24,
                              bottom: 12,
                            ),
                            child: Container(
                                child: SfSparkLineChart(
                              //Enable the trackball
                              trackball: const SparkChartTrackball(
                                  activationMode: SparkChartActivationMode.tap),
                              //Enable marker
                              marker: const SparkChartMarker(
                                  displayMode: SparkChartMarkerDisplayMode.all),
                              //Enable data label
                              labelDisplayMode: SparkChartLabelDisplayMode.all,
                              data: const <double>[
                                1,
                                5,
                                6,
                                0,
                                1,
                                2,
                                7,
                                7,
                                4,
                                10,
                                8,
                                6,
                                7,
                                5,
                                8,
                                5,
                                3
                              ],
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

String noRecord =
    'Belgilangan sana oralig\'ida hech qanday natija qo\'shilmagan yoki hech qanday natija mavjud emas';
