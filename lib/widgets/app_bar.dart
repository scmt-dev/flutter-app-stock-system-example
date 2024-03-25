import 'package:flutter/material.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  WidgetAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Stock Application',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.indigo,
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            print(1 + 1);
          },
        ),
        IconButton(
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            print(1 + 1);
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ],
    );
  }
}
