import 'package:ditonton/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key});

  @override
  State<DefaultAppBar> createState() => _DefaultAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _DefaultAppBarState extends State<DefaultAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Ditonton'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, SearchPage.ROUTE_NAME);
          },
          icon: Icon(Icons.search),
        )
      ],
    );
  }
}
