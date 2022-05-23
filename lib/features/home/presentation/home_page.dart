import 'package:custodia_movies/core/change_notifiers/loading_notifier.dart';
import 'package:custodia_movies/core/widgets/organisms/appbar.dart';
import 'package:custodia_movies/features/home/presentation/organisms/movie_card.dart';
import 'package:custodia_movies/features/home/presentation/state/movies_provider.dart';
import 'package:dismiss_keyboard_on_tap/dismiss_keyboard_on_tap.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:provider/provider.dart';

import '../../../core/service_locator/service_locator.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movies = context.watch<MoviesProvider>().movies;
    return LoadingOverlay(
      isLoading: sl<LoadingNotifier>().isLoading,
      child: DismissKeyboardOnTap(
        child: Scaffold(
          appBar: const CAppBar(
            showSearch: true,
          ),
          body: movies.isEmpty
              ? const Center(child: Text('No Results Found'))
              : Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: kIsWeb ? 6 : 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      return MovieCard(model: movies[index]);
                    },
                    itemCount: movies.length,
                  ),
                ),
        ),
      ),
    );
  }
}
