import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:custodia_movies/core/extensions/context_ext.dart';
import 'package:custodia_movies/core/routing/router.dart';
import 'package:custodia_movies/core/widgets/toasts/error_toast.dart';
import 'package:custodia_movies/features/home/presentation/state/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../../../core/data/model/movie_model.dart';

class MovieCard extends StatelessWidget {
  final MovieModel model;

  const MovieCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result =
            await context.read<MoviesProvider>().getMovieDetails(model.imdbId);
        result.fold(
          (error) =>
              context.toast.showToast(child: ErrorToast(errorText: error)),
          (movieModel) =>
              context.router.push(MovieDetailsPageRoute(model: movieModel)),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Hero(
                      tag: 'movie-image-${model.imdbId}',
                      child: CachedNetworkImage(
                        imageUrl: model.poster,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0).copyWith(bottom: 0),
                  child: Text(
                    model.title,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    model.year,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
