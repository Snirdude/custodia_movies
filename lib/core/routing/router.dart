import 'package:auto_route/auto_route.dart';
import 'package:custodia_movies/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true,),
  ],
)
class AppRouter extends _$AppRouter {}
