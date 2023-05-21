import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MundarijaBodys extends StatelessWidget {
  const MundarijaBodys({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        chartWidget(
          width * .97,
          height * .6,
          Colors.grey[400]!,
          Colors.white60,
        ),
      ],
    );
  }
}

Widget chartWidget(
  double width,
  double height,
  Color color1,
  Color color2,
) {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: color1, // Colors.grey[400],
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: color2, //Colors.white60,
          blurRadius: 2,
          offset: const Offset(1, 2),
        ),
      ],
    ),
    width: width,
    height: height,
    child: Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: SfCartesianChart(
          borderColor: Colors.white24,
          // Initialize category axis
          primaryXAxis: CategoryAxis(),
          series: <LineSeries<SalesData, String>>[
            LineSeries<SalesData, String>(
              pointColorMapper: (datum, index) => AppColors.bluEAccent,
              // Bind data source
              dataSource: <SalesData>[
                SalesData('Feb', 9),
                SalesData('Yan', 6),
                SalesData('Mar', 5),
                SalesData('Apr', 3),
                SalesData('May', 4),
                SalesData('Iyun', 10),
                SalesData('Iyul', 4),
                SalesData('Avg', 4),
                SalesData('Sen', 1),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
            )
          ]),
    ),
  );
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
