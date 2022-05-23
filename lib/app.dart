import 'package:custodia_movies/core/change_notifiers/loading_notifier.dart';
import 'package:custodia_movies/core/routing/router.dart';
import 'package:custodia_movies/features/home/presentation/state/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:provider/provider.dart';

import 'core/service_locator/service_locator.dart';

class App extends StatelessWidget {
  final router = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MoviesProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
              fontSize: 16,
            ),
            bodyText1: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: router.delegate(),
      ),
    );
  }
}
