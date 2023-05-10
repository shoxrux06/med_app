import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_constants.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/src/features/home/presentaion/pages/add_pain_page.dart';

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

  String? selectedValue;
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  List<bool> checked = [false, false, false, false];

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
                  )
                ],
              ),
            )
          ],
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
