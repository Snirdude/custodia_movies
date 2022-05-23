import 'package:cached_network_image/cached_network_image.dart';
import 'package:custodia_movies/core/widgets/organisms/appbar.dart';
import 'package:custodia_movies/features/home/presentation/state/movies_provider.dart';
import 'package:custodia_movies/features/movie_details/presentation/organisms/movie_details_image_row.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/data/model/movie_model.dart';

class MovieDetailsPage extends StatelessWidget {
  final MovieModel model;

  const MovieDetailsPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movie = context.read<MoviesProvider>().currentMovie!;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CAppBar(
        title: movie.title,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieDetailsImageRow(model: model),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.plot,
                    style: textTheme.bodyText1,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Directed by: ${model.director}',
                    style: textTheme.bodyText1,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Cast: ${model.actors}',
                    style: textTheme.bodyText1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
