import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:medical_app/src/features/monitoring/data/models/life_and_death.dart';

class CustomTableTwo extends StatelessWidget {
  final List<LifeAndDeath> lifeList;

  const CustomTableTwo({
    Key? key,
    required this.lifeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      height: 600.h,
      decoration: BoxDecoration(
          color: AppColors.backDark,
          borderRadius: const BorderRadius.all(Radius.circular(0)).w),
      child: DataTable2(
          border: TableBorder.all(
              color: AppColors.backDark,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(15).w,
                  topRight: const Radius.circular(15).w)),
          columnSpacing: 15,
          horizontalMargin: 5,
          minWidth: 350,
          dividerThickness: 1,
          columns: const [
            DataColumn(label: Center(child: Text('Yili')), tooltip: " "),
            DataColumn(
              label: Center(child: Text('Umumiy tug\'ilganlar soni')),
            ),
          ],
          rows: List<DataRow>.generate(
              lifeList.length,
                  (index) => DataRow(cells: [
                DataCell(Text(lifeList[index].year)),
                DataCell(Text(lifeList[index].amount)),
              ]))),
    );
  }
}
