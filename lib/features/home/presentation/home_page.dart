import 'package:custodia_movies/core/widgets/organisms/appbar.dart';
import 'package:custodia_movies/features/home/presentation/organisms/movie_card.dart';
import 'package:custodia_movies/features/home/presentation/state/home_provider.dart';
import 'package:dismiss_keyboard_on_tap/dismiss_keyboard_on_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movies = context.watch<HomeProvider>().movies;
    return DismissKeyboardOnTap(
      child: Scaffold(
        appBar: const CAppBar(
          showSearch: true,
        ),
        body: movies.isEmpty
            ? const Center(child: Text('No Results Found'))
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return MovieCard(model: movies[index]);
                },
                itemCount: movies.length,
              ),
      ),
    );
  }
}
