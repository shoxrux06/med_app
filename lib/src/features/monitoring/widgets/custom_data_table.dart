import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';

import '../data/models/sicknes.dart';

class CustomDataTable extends StatelessWidget {
  final List<Sickness> sicknessList;

  const CustomDataTable({
    Key? key,
    required this.sicknessList,
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
            DataColumn2(
              label: Center(child: Text('Kasallik nomi')),
              size: ColumnSize.S,
            ),
            DataColumn(label: Center(child: Text('Yili')), tooltip: " "),
            DataColumn(
              label: Center(child: Text('Soni')),
            ),
          ],
          rows: List<DataRow>.generate(
              sicknessList.length,
              (index) => DataRow(cells: [
                    DataCell(Text(sicknessList[index].sicknessName)),
                    DataCell(Text(sicknessList[index].sicknessYear)),
                    DataCell(Text(sicknessList[index].sicknessAmount)),
                  ]))),
    );
  }
}
