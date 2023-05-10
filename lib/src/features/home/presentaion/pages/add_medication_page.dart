import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/src/core/constants/app_constants.dart';

class AddMedicationPage extends StatefulWidget {
  const AddMedicationPage({Key? key}) : super(key: key);

  @override
  State<AddMedicationPage> createState() => _AddMedicationPageState();
}

class _AddMedicationPageState extends State<AddMedicationPage> {
  final searchController = TextEditingController();
  final startController = TextEditingController();
  final endController = TextEditingController();
  final additionalDescController = TextEditingController();
  final notesController = TextEditingController();

  final formatter = DateFormat('dd/MM/yyyy');
  String dropdownValue = 'mg';
  String dropdownTimeValue = 'soat';
  String dropdownValueForm = 'Kapsula';

  final isSearching = false;
  bool isSelected = false;
  int selectedNumber = -1;
  bool isFirst = true;
  bool isSecond = true;
  bool isThird = true;

  final strengthList = [
    'mg',
    'g',
    '%',
  ];

  final repeatList = ['soat', 'kun', 'hafta', 'oy'];

  final takeList = [
    'Kerakli',
    'Rejalashtirilgan',
    'Kerakli & Rejalashtirilgan',
  ];
  final formList = [
    'Kapsula',
    'mL',
    'sprey',
    'tabletka',
    'birlik',
    'tomchi',
  ];
  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dori qo\'shish'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: isSearching
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Dori qidiring va paydo bolgan royxatdan birini tanlang'),
                  sizedBox24Height,
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Dori nomi'),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          width: 2,
                          color: Colors.black12,
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ))),
                    onChanged: (value) {
                      if (value.length > 3) {}
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, top: 4),
                    child: Text('Minimalniy 3 ta harf kiriting'),
                  ),
                  sizedBox24Height,
                  Text('Bazaga bunday dori topilmadi'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Bazaga dor qo\'shish'),
                  )
                ],
              )
            : Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AnimatedCrossFade(
                        firstChild: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 2, color: Colors.black)),
                          child: Row(
                            children: [
                              Text('Dori tavfsifi'),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFirst = !isFirst;
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down_sharp))
                            ],
                          ),
                        ),
                        secondChild: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 2, color: Colors.black)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text('Dori tavfsifi'),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isFirst = !isFirst;
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_down_sharp))
                                ],
                              ),
                              sizedBox12Height,
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text('Brand'),
                                  enabledBorder: enabledBorder,
                                  focusedBorder: focusedBorder,
                                ),
                              ),
                              sizedBox12Height,
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text('Dori nomi'),
                                  enabledBorder: enabledBorder,
                                  focusedBorder: focusedBorder,
                                ),
                              ),
                              sizedBox12Height,
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        label: Text('Soni'),
                                        enabledBorder: enabledBorder,
                                        focusedBorder: focusedBorder,
                                      ),
                                    ),
                                  ),
                                  sizedBox12Width,
                                  Expanded(
                                    child: DropdownButtonFormField(
                                        value: dropdownValue,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        elevation: 16,
                                        dropdownColor: Colors.white,
                                        decoration: const InputDecoration(
                                          enabledBorder: enabledBorder,
                                          focusedBorder: focusedBorder,
                                        ),
                                        style: const TextStyle(
                                            color: Colors.black),
                                        items: strengthList
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                        onChanged: (String? value) {
                                          setState(() {
                                            dropdownValue = value!;
                                            print(
                                                'dropdownValue onChanged --> $dropdownValue');
                                          });
                                        }),
                                  ),
                                ],
                              ),
                              sizedBox12Height,
                              DropdownButtonFormField(
                                  value: dropdownValueForm,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  elevation: 16,
                                  dropdownColor: Colors.white,
                                  decoration: const InputDecoration(
                                    enabledBorder: enabledBorder,
                                    focusedBorder: focusedBorder,
                                  ),
                                  style: const TextStyle(color: Colors.black),
                                  items: formList.map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      dropdownValueForm = value!;
                                      print(
                                          'dropdownValueForm onChanged --> $dropdownValue');
                                    });
                                  }),
                            ],
                          ),
                        ),
                        crossFadeState: isFirst
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 300),
                      ),
                      sizedBox12Height,
                      AnimatedCrossFade(
                        firstChild: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 2, color: Colors.black)),
                          child: Row(
                            children: [
                              Text('Instruksiya'),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSecond = !isSecond;
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down_sharp))
                            ],
                          ),
                        ),
                        secondChild: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 2, color: Colors.black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text('Dori tavfsifi'),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isSecond = !isSecond;
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_down_sharp))
                                ],
                              ),
                              sizedBox12Height,
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        _selectStartDate(context);
                                      },
                                      child: TextFormField(
                                        controller: startController,
                                        enabled: false,
                                        decoration: InputDecoration(
                                            label:
                                            const Text('Boshlanish sanasi'),
                                            border: enabledBorder,
                                            enabledBorder: enabledBorder,
                                            focusedBorder: focusedBorder,
                                            suffixIcon: InkWell(
                                                onTap: () {
                                                  print('tapped');
                                                },
                                                child: Icon(
                                                    Icons.calendar_month))),
                                      ),
                                    ),
                                  ),
                                  sizedBox12Width,
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        _selectEndDate(context);
                                      },
                                      child: TextFormField(
                                        controller: endController,
                                        enabled: false,
                                        decoration: const InputDecoration(
                                            label: Text('Tugash sanasi'),
                                            border: enabledBorder,
                                            enabledBorder: enabledBorder,
                                            focusedBorder: focusedBorder,
                                            suffixIcon:
                                            Icon(Icons.calendar_month)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              sizedBox12Height,
                              const Text('Sifatida qabul qiling: '),
                              ...List.generate(takeList.length, (index) {
                                print('index --> $index');
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedNumber = index;
                                    });
                                    print('index --> $index');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(4),
                                    height: 56,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: (selectedNumber == index)
                                            ? Colors.blue
                                            : Colors.black12,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          takeList[index],
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(24),
                                            color: (selectedNumber == index)
                                                ? Colors.blue
                                                : null,
                                            border: Border.all(
                                                color: (selectedNumber == index)
                                                    ? Colors.blue
                                                    : Colors.black12,
                                                width: 2),
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                              sizedBox12Height,
                              const Text('Doza'),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (_) {
                                          return Container(
                                            padding: const EdgeInsets.all(12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('Doza qoshish'),
                                                    Spacer(),
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Text('Tasdiqlash'),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    Expanded(
                                                      child: TextFormField(
                                                        decoration:
                                                        const InputDecoration(
                                                            enabledBorder:
                                                            enabledBorder,
                                                            focusedBorder:
                                                            focusedBorder,
                                                            label: Text(
                                                                'Doza')),
                                                      ),
                                                    ),
                                                    sizedBox24Width,
                                                    const Expanded(
                                                        child: Text('Birlik'))
                                                  ],
                                                ),
                                                sizedBox12Height,
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    Expanded(
                                                      child: TextFormField(
                                                        decoration: const InputDecoration(
                                                            enabledBorder:
                                                            enabledBorder,
                                                            focusedBorder:
                                                            focusedBorder,
                                                            label: Text(
                                                                'Har bir takrorlang')),
                                                      ),
                                                    ),
                                                    sizedBox24Width,
                                                    Expanded(
                                                      child:
                                                      DropdownButtonFormField(
                                                          value:
                                                          dropdownTimeValue,
                                                          icon: const Icon(Icons
                                                              .arrow_drop_down),
                                                          elevation: 16,
                                                          dropdownColor:
                                                          Colors.white,
                                                          decoration:
                                                          const InputDecoration(
                                                            enabledBorder:
                                                            enabledBorder,
                                                            focusedBorder:
                                                            focusedBorder,
                                                          ),
                                                          style: const TextStyle(
                                                              color: Colors
                                                                  .black),
                                                          items: repeatList.map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                          value) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: value,
                                                              child: Text(
                                                                  value),
                                                            );
                                                          }).toList(),
                                                          onChanged:
                                                              (String?
                                                          value) {
                                                            setState(() {
                                                              dropdownTimeValue =
                                                              value!;
                                                              print(
                                                                  'dropdownValue onChanged --> $dropdownValue');
                                                            });
                                                          }),
                                                    ),
                                                  ],
                                                ),
                                                sizedBox24Height,
                                                // Spacer(),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
                                                    color: Colors.black12,
                                                    width: double.infinity,
                                                    height: 56,
                                                    child: Center(
                                                      child: Text('Yopish'),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: Text('Doza qo\'shish'),
                                ),
                              ),
                              sizedBox12Height,
                              TextFormField(
                                controller: additionalDescController,
                                decoration: const InputDecoration(
                                  label: Text('Qo\'shimcha tavsif'),
                                  enabledBorder: enabledBorder,
                                  focusedBorder: focusedBorder,
                                ),
                              )
                            ],
                          ),
                        ),
                        crossFadeState: isSecond
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 300),
                      ),
                      sizedBox12Height,
                      AnimatedCrossFade(
                        firstChild: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 2, color: Colors.black)),
                          child: Row(
                            children: [
                              const Text('Eslatmalar'),
                              Spacer(),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isThird = !isThird;
                                    });
                                  },
                                  icon: Icon(Icons.keyboard_arrow_down_sharp))
                            ],
                          ),
                        ),
                        secondChild: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 2, color: Colors.black)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text('Eslatmalar'),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isThird = !isThird;
                                        });
                                      },
                                      icon: Icon(
                                          Icons.keyboard_arrow_down_sharp)),
                                ],
                              ),
                              TextFormField(
                                controller: notesController,
                                decoration: const InputDecoration(
                                  label: Text(
                                      'Har qanday qo\'shimcha ma\'lumotni kiriting'),
                                  enabledBorder: enabledBorder,
                                  focusedBorder: focusedBorder,
                                ),
                              )
                            ],
                          ),
                        ),
                        crossFadeState: isThird
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 300),
                      ),
                      // Spacer(),
                      sizedBox24Height,
                      sizedBox24Height,
                      ElevatedButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text('Saqlash'),
                          )
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate) {
      setState(() {
        selectedStartDate = picked;
        final formattedDateString = formatter.format(selectedStartDate);
        startController.text = formattedDateString;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedEndDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedEndDate) {
      setState(() {
        selectedEndDate = picked;
        setState(() {
          final formattedDateString = formatter.format(selectedEndDate);
          endController.text = formattedDateString;
        });
      });
    }
  }
}
