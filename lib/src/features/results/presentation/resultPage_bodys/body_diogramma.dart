import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';

class DiogrammaBodys extends StatefulWidget {
  const DiogrammaBodys({super.key});

  @override
  State<DiogrammaBodys> createState() => _DiogrammaBodysState();
}

final List<String> list = <String>[
  'Locations',
  'Characteristics',
  'Other Associated Symptoms',
  'Alleviating Factors',
  'Ineffective Factors',
  'Environment',
  'Meaningful Activites',
];

class _DiogrammaBodysState extends State<DiogrammaBodys> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15),
          width: width * .97,
          height: height * .15,
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton<String>(
                dropdownColor: AppColors.white,
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 30,
                  color: AppColors.bluEAccent,
                ),
                elevation: 0,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.black),
                underline: Container(
                  width: 2,
                  height: 2,
                  color: AppColors.bluEAccent,
                ),
                onChanged: (String? newValue) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = newValue!;
                    debugPrint(dropdownValue);
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * .8,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: AppColors.bluEAccent,
                    ),
                  ),
                  const Text(
                    '100%',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox()
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
