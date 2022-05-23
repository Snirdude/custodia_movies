// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    MovieDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailsPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: MovieDetailsPage(key: args.key, model: args.model));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomePageRoute.name, path: '/'),
        RouteConfig(MovieDetailsPageRoute.name, path: '/movie-details-page')
      ];
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [MovieDetailsPage]
class MovieDetailsPageRoute extends PageRouteInfo<MovieDetailsPageRouteArgs> {
  MovieDetailsPageRoute({Key? key, required MovieModel model})
      : super(MovieDetailsPageRoute.name,
            path: '/movie-details-page',
            args: MovieDetailsPageRouteArgs(key: key, model: model));

  static const String name = 'MovieDetailsPageRoute';
}

class MovieDetailsPageRouteArgs {
  const MovieDetailsPageRouteArgs({this.key, required this.model});

  final Key? key;

  final MovieModel model;

  @override
  String toString() {
    return 'MovieDetailsPageRouteArgs{key: $key, model: $model}';
  }
}
