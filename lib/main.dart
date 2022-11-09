import 'package:flutter/material.dart';
import 'package:innova/router/app_routes.dart';

import 'package:innova/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Innova',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.lostRoutes,
        theme: AppTheme.lightTheme,
      );
  }
}