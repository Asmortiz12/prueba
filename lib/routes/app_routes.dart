import 'package:flutter/material.dart';
import 'package:alexander_sebastian_s_application1/presentation/responsive_screen/responsive_screen.dart';

class AppRoutes {
  static const String responsiveScreen = '/responsive_screen';

  static Map<String, WidgetBuilder> routes = {
    responsiveScreen: (context) => ResponsiveScreen()
  };
}
