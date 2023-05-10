import 'package:flutter/material.dart';
import 'package:medical_app/src/features/auth/presentation/pages/login_page.dart';
import 'package:medical_app/src/features/auth/presentation/pages/registration_page.dart';
import 'package:medical_app/src/features/home/presentaion/pages/add_medication_page.dart';
import 'package:medical_app/src/features/home/presentaion/pages/add_pain_page.dart';
import 'package:medical_app/src/features/home/presentaion/pages/home_page.dart';
import 'package:medical_app/src/features/main/presentation/pages/main_page.dart';
import 'package:medical_app/src/features/reports/presentation/pages/reports_page.dart';
import 'package:medical_app/src/features/results/presentation/pages/results_page.dart';

import 'app_routes.dart';

abstract class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegistrationPage());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppRoutes.main:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case AppRoutes.addPain:
        return MaterialPageRoute(builder: (_) => const AddPainPage());
      case AppRoutes.addMedication:
        return MaterialPageRoute(builder: (_) => const AddMedicationPage());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppRoutes.results:
        return MaterialPageRoute(builder: (_) => const ResultsPage());
      case AppRoutes.reports:
        return MaterialPageRoute(builder: (_) => const ReportsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}
