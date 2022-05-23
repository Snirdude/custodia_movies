import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../data/model/movie_type.dart';

class AppBarTypeButton extends StatelessWidget {
  final ValueNotifier<MovieType> searchType;

  const AppBarTypeButton({Key? key, required this.searchType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (searchType.value == MovieType.movie) {
          searchType.value = MovieType.series;
        } else {
          searchType.value = MovieType.movie;
        }
      },
      child: Text(
        EnumToString.convertToString(searchType.value).toUpperCase(),
        style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
      ),
    );
  }
}
