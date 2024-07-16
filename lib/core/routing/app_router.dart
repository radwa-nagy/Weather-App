import 'package:flutter/material.dart';
import 'package:weatherapp/core/routing/routes.dart';
import 'package:weatherapp/features/search_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.search:
        return MaterialPageRoute(builder: (_) => const SearchView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Route defiend For ${settings.name}'),
                  ),
                ));
    }
  }
}
