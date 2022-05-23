import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CAppBar extends StatelessWidget with PreferredSizeWidget {
  const CAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            // context.router.push()
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
