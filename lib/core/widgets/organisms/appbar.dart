import 'package:auto_route/auto_route.dart';
import 'package:custodia_movies/core/data/model/movie_type.dart';
import 'package:custodia_movies/core/extensions/context_ext.dart';
import 'package:custodia_movies/core/extensions/string_ext.dart';
import 'package:custodia_movies/core/widgets/atoms/appbar_type_button.dart';
import 'package:custodia_movies/core/widgets/toasts/error_toast.dart';
import 'package:custodia_movies/features/home/presentation/state/movies_provider.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../atoms/appbar_search_button.dart';

class CAppBar extends HookWidget with PreferredSizeWidget {
  final bool showSearch;
  final String title;

  const CAppBar({
    Key? key,
    this.showSearch = false,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final searchType = useState(MovieType.movie);
    return AppBar(
      title: showSearch
          ? TextField(
              controller: controller,
              decoration: InputDecoration(
                  labelText:
                      'Search ${EnumToString.convertToString(searchType.value)} name'),
            )
          : Text(title),
      actions: showSearch
          ? [
              AppBarTypeButton(searchType: searchType),
              AppBarSearchButton(
                controller: controller,
                type: searchType.value,
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
