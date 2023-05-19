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
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.white54,
                blurRadius: 2,
                offset: Offset(1, 2),
              ),
            ],
          ),
          width: width * .97,
          height: height * .6,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: SfCartesianChart(
                // Initialize category axis
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                      pointColorMapper: (datum, index) => AppColors.bluEAccent,
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Feb', 5),
                        SalesData('Jan', 6),
                        SalesData('Mar', 10),
                        SalesData('Apr', 5),
                        SalesData('May', 4),
                        SalesData('Jun', 1),
                        SalesData('Jul', 4),
                        SalesData('Aug', 10),
                        SalesData('Sen', 1),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales)
                ]),
          ),
        ),
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
