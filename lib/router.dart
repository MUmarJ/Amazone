import 'package:flutter/material.dart';
import 'package:flutter_cockpit/features/auth/screens/auth_screen.dart';
import 'package:flutter_cockpit/features/errors/screens/page_not_found.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const PageNotFoundError(),
      );
  }
}
