import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CAppBar extends HookWidget with PreferredSizeWidget {
  const CAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final controller = useTextEditingController();
    return AppBar(
      title: TextField(controller: controller),
      actions: [
        IconButton(
          onPressed: () {
            
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
