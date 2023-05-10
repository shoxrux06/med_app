import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_assets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-48,
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2
        ),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.google, width: 32,height: 32,),
          const SizedBox(width: 12,),
          const Text('Google bilan ro\'yxatdan o\'tish')
        ],
      ),
    );
  }
}
