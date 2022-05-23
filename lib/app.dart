import 'package:custodia_movies/core/routing/router.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final router = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(primarySwatch: Colors.amber),
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
    );
  }
}
