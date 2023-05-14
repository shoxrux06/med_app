import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/src/core/constants/app_constants.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/src/features/home/data/models/record_model.dart';
import 'package:medical_app/src/features/home/presentaion/pages/add_pain_page.dart';

import '../../../../core/utils/database_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentValues = 0;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  final dateFormat = DateFormat('yyyy-MM-dd');
  final timeFormat = DateFormat('hh:mm a');

  bool isFirst = true;

  List<RecordModel> recordList = [];

  getRecords()async{
    final dbHelper = DatabaseHelper.instance;
    recordList = await dbHelper.getAllRecords();
    print('Record List -->$recordList');
  }

  @override
  void initState() {
    getRecords();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Og\'riqlaringizni boshqaring'),
        leading: Container(),
        leadingWidth: 0,
      ),
      body: Container(
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    sizedBox24Height,
                    Text(
                      'Hozir og\'rig\'ingiz qanday ${dateFormat.format(_selectedDate ?? DateTime.now())} ${timeFormat.format(DateTime(
                        0,
                        0,
                        0,
                        _selectedTime?.hour ?? 0,
                        _selectedTime?.minute ?? 0,
                      ))}',
                    ),
                    sizedBox24Height,
                    ElevatedButton(
                      onPressed: () async {
                        await _selectDate(context);
                        await _selectTime(context);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.calendar_month),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Sana va vaqtni o\'zgartirish')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Slider(
                      min: 0.0,
                      max: 10.0,
                      label: '$_currentValues',
                      activeColor: Colors.red,
                      value: _currentValues,
                      onChanged: (value) {
                        setState(() {
                          _currentValues = value;
                        });
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => const AddPainPage()
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.add),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Og\'riq yozuvini qo\'shing')
                        ],
                      ),
                    ),
                    sizedBox24Height,
                  ],
                ),
              ),
              sizedBox24Height,
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Oxirgi yozuvlar',
                          ),
                          const Spacer(),
                          ElevatedButton(onPressed: (){}, child:   Text(
                            'Sync',
                          ),)
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                        itemCount: recordList.length,
                        itemBuilder: (context, index){
                      return AnimatedCrossFade(
                        firstChild: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.black26) ,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Row(
                            children: [
                              TextButton(onPressed: (){}, child: Text('${recordList[index].dateTime}')),
                              Spacer(),
                              Text('1 pain records'),
                              SizedBox(width: 12,),
                              MaterialButton(
                                  minWidth: 72.h,
                                  visualDensity: const VisualDensity(
                                    horizontal: -4,
                                  ),
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
                                  onPressed: () {
                                    setState(() {
                                      isFirst = !isFirst;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.chevron_down,
                                    size: 30.h,
                                  )
                              ),
                            ],
                          ),
                        ),
                        secondChild: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            border:Border.all(color: Colors.black26) ,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  TextButton(onPressed: (){}, child: Text('${recordList[index].dateTime}')),
                                  Spacer(),
                                  Text('1 pain records'),
                                  SizedBox(width: 12,),
                                  MaterialButton(
                                      minWidth: 72.h,
                                      visualDensity: const VisualDensity(
                                        horizontal: -4,
                                      ),
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
                                      onPressed: () {
                                        setState(() {
                                          isFirst = !isFirst;
                                        });
                                      },
                                      child: Icon(
                                        CupertinoIcons.chevron_up,
                                        size: 30.h,
                                      )
                                  ),
                                ],
                              ),
                              Text('${recordList[index].painLocationList.isEmpty}'),
                            ],
                          ),
                        ),
                        crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                          duration: const Duration(milliseconds: 300)
                      );
                    })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  // Function to show time picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }
}
