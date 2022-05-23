import 'package:custodia_movies/core/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../../features/home/presentation/state/home_provider.dart';
import '../../data/model/movie_type.dart';
import '../toasts/error_toast.dart';

class AppBarSearchButton extends StatelessWidget {
  final TextEditingController controller;
  final MovieType type;
  const AppBarSearchButton(
      {Key? key, required this.controller, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (controller.text.isNotEmpty) {
          final result = await context.read<HomeProvider>().searchMovies(
                controller.text,
                type,
              );
          result.fold(
            (error) =>
                context.toast.showToast(child: ErrorToast(errorText: error)),
            (r) => null,
          );
        }
      },
      icon: Icon(
        Icons.search,
        color: Theme.of(context).secondaryHeaderColor,
      ),
    );
  }
}
