import 'package:custodia_movies/core/widgets/organisms/appbar.dart';
import 'package:custodia_movies/features/home/presentation/state/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movie = context.read<MoviesProvider>().currentMovie!;
    return Scaffold(
      appBar: CAppBar(
        title: movie.title,
      ),
    );
  }
}
