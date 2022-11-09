import 'package:flutter/material.dart';

import 'package:innova/models/models.dart';
import 'package:innova/screens/screens.dart';


class AppRoutes {

  static const initialRoute = 'login';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'login',
      icon: Icons.login,
      name: 'Login',
      screen: LoginPage()
    ),
    MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Inicio',
      screen: const HomePage()
    ),
    MenuOption(
      route: 'history',
      icon: Icons.list_alt,
      name: 'Historial',
      screen: const HistoryOfBillScreen()
    ),
    MenuOption(
      route: 'inventory',
      icon: Icons.list,
      name: 'Inventario',
      screen: const InventoryScreen()
    ),
    MenuOption(
      route: 'create',
      icon: Icons.add_alert_outlined,
      name: 'Crear Factura',
       screen: const CreateBillScreen()
      ),

  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes () {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route  :( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  static Route<dynamic> lostRoutes ( RouteSettings settings) {
    return MaterialPageRoute(
      builder: ((context) => const HomePage())
    );
  }

}