import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/src/core/constants/app_assets.dart';
import 'package:medical_app/src/features/auth/presentation/pages/registration_page.dart';
import 'package:medical_app/src/features/auth/presentation/widgets/custom_button.dart';

import '../widgets/request_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tizimga kirish'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 48,),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppAssets.logo, width: 100,height: 100,),
                  SizedBox(width: 12,),
                  Text('Ilova nomi'),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 24,
            ),
            textField(_emailController, 'Pochta'),
            const SizedBox(
              height: 24,
            ),
            textField(_passwordController, 'Parol'),
            const SizedBox(
              height: 24,
            ),
            const RequestButton(
              isLoading: false,
              text: 'Kirish'
            ),
            const SizedBox(
              height: 24,
            ),
            Text('Ro\'yxatdan o\'tmaganmisz?'),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const RegistrationPage()));
              },
              child: Text('Ro\'yxatdan o\'tish',),
            ),
          ],
        ),
      ),
    );
  }

  Widget textField(TextEditingController controller, String label) {
    return Container(
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      width: MediaQuery.of(context).size.width - 48,
      height: 56,
      child: TextFormField(
        onChanged: (String value) {},
        style: const TextStyle(fontSize: 14),
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black54,
            ),
            borderRadius: AppAssets.borderRadius12,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: AppAssets.borderRadius12,
          ),
          labelText: label,
          labelStyle: const TextStyle(fontSize: 14),
          hintStyle: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
