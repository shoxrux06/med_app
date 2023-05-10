import 'package:flutter/material.dart';

class AppAssets{
  const AppAssets._();

  static const String _pngPath = 'assets/images/png';
  static const String _svgPath = 'assets/images/svg';

  ///png
  static const String logo = '$_pngPath/logo.png';
  static const String home = '$_pngPath/home.png';
  static const String results = '$_pngPath/results.png';
  static const String reports = '$_pngPath/reports.png';
  static const String menu = '$_pngPath/menu.png';
  static const String monitoring = '$_pngPath/monitoring.png';
  static const String google = '$_pngPath/google.png';

  static const String man = '$_pngPath/man.png';

  ///svg
  static const String globalSvg = '$_svgPath/name.svg';

  ///
  static BorderRadius borderRadius12 = BorderRadius.circular(12);

  static const Map<String, dynamic> bottomNavigationItems = {
    'Home': {'inactive': home, 'active': home},
    'Results': {'inactive': results, 'active': results},
    'Reports': {'inactive': reports, 'active': reports},
    'Monitoring': {'inactive': monitoring, 'active': monitoring},
    'Menu': {'inactive': menu, 'active': menu},
  };
}