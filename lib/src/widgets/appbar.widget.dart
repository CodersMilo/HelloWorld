import 'package:flutter/material.dart';

class AppBarWidget {
  final String title;

  const AppBarWidget({
    required this.title,
  });

  build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.refresh_outlined,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.shop,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.store,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
