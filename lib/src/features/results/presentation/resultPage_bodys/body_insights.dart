import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_colors.dart';
import 'package:medical_app/src/features/results/presentation/resultPage_bodys/body_mundarija.dart';

class InsightsBody extends StatefulWidget {
  const InsightsBody({super.key});

  @override
  State<InsightsBody> createState() => _InsightsBodyState();
}

class _InsightsBodyState extends State<InsightsBody> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 5),
            margin: const EdgeInsets.only(
              left: 5,
              right: 5,
              top: 5,
              bottom: 5,
            ),
            width: width * .97,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  'Og\'riq darajasi ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 10,
                    bottom: 12,
                  ),
                  child: chartWidget(
                    width * .98,
                    height * .5,
                    Colors.grey[300]!,
                    Colors.white,
                  ),
                ),
              ],
            ),
          ),
          insightsInfosWidget(
            context,
            width,
            width * .8,
            0,
            height,
            foizi: '100',
            illenessName: 'Bosh',
            title: 'Joylashuv',
          ),
          const SizedBox(
            height: 20,
          ),
          insightsInfosWidget(
            context,
            width,
            width * .1,
            width * .7,
            height,
            foizi: '10',
            illenessName: 'Aqli zaiflik',
            title: 'Boshqa simptomlar',
          ),
          const SizedBox(
            height: 20,
          ),
          insightsInfosWidget(
            context,
            width,
            width * .5,
            width * .3,
            height,
            foizi: '50',
            illenessName: 'ignalar bilan',
            title: 'Xususiyatlari',
          ),
          const SizedBox(
            height: 20,
          ),
          insightsInfosWidget(
            context,
            width,
            width * .3,
            width * .5,
            height,
            foizi: '30',
            illenessName: 'Tizza',
            title: 'Joylashuv',
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

/* bodyIsightsni ichida qollanilgan */
Container insightsInfosWidget(
  BuildContext context,
  double width1,
  double width2,
  double width4,
  double height, {
  required String title,
  required String illenessName,
  required String foizi,
}) {
  return Container(
    width: width1 * .97,
    height: height * .25,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      // boxShadow: const [
      //   BoxShadow(
      //     color: Colors.white,
      //     blurRadius: 2,
      //     offset: Offset(1, 2),
      //   ),
      // ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              width: width2,
              height: 8,
              decoration: const BoxDecoration(
                color: AppColors.bluEAccent,
              ),
            ),
            SizedBox(
              width: width4,
            ),
            IconButton(
              onPressed: () {
                _showMyDialog1(context);
              },
              splashRadius: 20,
              icon: const Icon(
                Icons.info_outline,
                size: 30,
                color: AppColors.blacK54,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              illenessName,
              style: const TextStyle(
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
            const SizedBox(),
            Text(
              '$foizi%',
              style: const TextStyle(
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
  );
}

Future<void> _showMyDialog1(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Malumot',
          textAlign: TextAlign.center,
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                '100 foizga asoslangan 1 ta " Pain Record Sistemas " ushbu malumotni o\'z ichiga oladi!',
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
