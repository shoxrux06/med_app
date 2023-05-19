import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class InsightsBody extends StatefulWidget {
  const InsightsBody({super.key});

  @override
  State<InsightsBody> createState() => _InsightsBodyState();
}

class _InsightsBodyState extends State<InsightsBody> {
  List<num> datas = <double>[
    1,
    5,
    6,
    0,
    10,
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
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 5,
              right: 5,
              top: 5,
              bottom: 5,
            ),
            width: width * .97,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  'Og\'riq darajasi ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
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
                  child: SfSparkLineChart(
                    //Enable the trackball
                    trackball: const SparkChartTrackball(
                        activationMode: SparkChartActivationMode.tap),
                    //Enable marker
                    marker: const SparkChartMarker(
                        displayMode: SparkChartMarkerDisplayMode.all),
                    //Enable data label
                    labelDisplayMode: SparkChartLabelDisplayMode.all,
                    data: datas,
                  ),
                ),
              ],
            ),
          ),
          insightsInfosWidget(width, height,
              foizi: '100', illenessName: 'Head', title: 'Location'),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

/* bodyIsightsni ichida qollanilgan */
Container insightsInfosWidget(double width, double height,
    {required String title,
    required String illenessName,
    required String foizi}) {
  return Container(
    width: width * .97,
    height: height * .25,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: const [
        BoxShadow(
          color: Colors.white54,
          blurRadius: 2,
          offset: Offset(1, 2),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(),
            Container(
              width: width * .8,
              height: 8,
              decoration: const BoxDecoration(
                color: AppColors.bluEAccent,
              ),
            ),
            IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: const Icon(
                Icons.info_outline,
                size: 30,
                color: AppColors.blacK54,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              illenessName,
              style: const TextStyle(
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
            const SizedBox(),
            Text(
              '$foizi%',
              style: const TextStyle(
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
