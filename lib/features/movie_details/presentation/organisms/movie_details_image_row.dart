import 'package:cached_network_image/cached_network_image.dart';
import 'package:custodia_movies/core/data/model/movie_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MovieDetailsImageRow extends StatelessWidget {
  final MovieModel model;

  const MovieDetailsImageRow({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: 'movie-image-${model.imdbId}',
          child: CachedNetworkImage(
            imageUrl: model.poster,
            fit: BoxFit.fitWidth,
            width: kIsWeb ? null : MediaQuery.of(context).size.width * 0.55,
            height: kIsWeb ? MediaQuery.of(context).size.height * 0.5 : null,
          ),
        ),
        SizedBox(
          width: kIsWeb ? null : MediaQuery.of(context).size.width * 0.45,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Year: ${model.year}',
                  style: textTheme.headline2,
                ),
                const Divider(
                  thickness: 1,
                ),
                Text(
                  'Rated: ${model.rated}',
                  style: textTheme.headline2,
                ),
                const Divider(
                  thickness: 1,
                ),
                Text(
                  'Released: ${model.released}',
                  style: textTheme.headline2,
                ),
                const Divider(
                  thickness: 1,
                ),
                Text(
                  'Genre: ${model.genre}',
                  style: textTheme.headline2,
                ),
                const Divider(
                  thickness: 1,
                ),
                Text(
                  'IMDB Rating: ${model.imdbRating}',
                  style: textTheme.headline2,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
