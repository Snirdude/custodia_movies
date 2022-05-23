import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../core/data/model/movie_model.dart';

class MovieCard extends StatelessWidget {
  final MovieModel model;

  const MovieCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Card(
        elevation: 3,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(children: [
            SizedBox(
              height: constraints.maxHeight * 0.75,
              child: CachedNetworkImage(
                  imageUrl: model.poster, fit: BoxFit.fitHeight),
            )
          ]);
        }),
      ),
    );
  }
}
