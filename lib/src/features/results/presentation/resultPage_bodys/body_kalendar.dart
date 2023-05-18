import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class KalendarBodys extends StatefulWidget {
  const KalendarBodys({super.key});

  @override
  State<KalendarBodys> createState() => _KalendarBodysState();
}

class _KalendarBodysState extends State<KalendarBodys> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          width: width * .97,
          height: height * .65,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.white54,
                blurRadius: 2,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: TableCalendar(
            calendarStyle: const CalendarStyle(
              cellMargin: EdgeInsets.all(0),
              weekendTextStyle: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              defaultTextStyle: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              todayDecoration: BoxDecoration(
                color: AppColors.bluEAccent,
              ),
            ),
            headerStyle: const HeaderStyle(
              titleTextStyle: TextStyle(
                color: AppColors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              formatButtonVisible: false,
              titleCentered: true,
            ),
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2023, 01, 01),
            lastDay: DateTime.utc(2050, 01, 01),
          ),
        )
      ],
    );
  }
}
