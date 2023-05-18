import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';

class DiogrammaBodys extends StatefulWidget {
  const DiogrammaBodys({super.key});

  @override
  State<DiogrammaBodys> createState() => _DiogrammaBodysState();
}

class _DiogrammaBodysState extends State<DiogrammaBodys> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
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
              const Text(
                'title',
                style: TextStyle(
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'illenessName',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(),
                  Text(
                    '455%',
                    style: TextStyle(
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
        )
      ],
    );
  }
}
