import 'package:ditonton/presentation/pages/movie/search_page.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final void Function()? onPressed;

  const DefaultAppBar({super.key, this.title, this.onPressed});

  @override
  State<DefaultAppBar> createState() => _DefaultAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _DefaultAppBarState extends State<DefaultAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title ?? 'Ditonton'),
      actions: [
        IconButton(
          onPressed: widget.onPressed ??
              () {
                Navigator.pushNamed(context, SearchPage.ROUTE_NAME);
              },
          icon: Icon(Icons.search),
        )
      ],
    );
  }
}
