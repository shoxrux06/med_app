import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_assets.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({Key? key, required this.isLoading, required this.text})
      : super(key: key);

  final bool isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 48,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: AppAssets.borderRadius12,
        color: Colors.grey,
      ),
      child: Center(
        child: isLoading ? const CircularProgressIndicator() : Text(text),
      ),
    );
  }
}
