import 'dart:io';

import 'package:flutter/material.dart';

class WidgetAppDrawer extends StatelessWidget {
  const WidgetAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: Platform.isIOS ? 40 : 0,
          ),
          ListTile(
            title: Text('Sign in'),
            onTap: (){
              print(1+1);
              print('Sign in Tap');
              Navigator.pop(context);
              Navigator.pushNamed(context, '/signin');
            },
          ),
          ListTile(
            title: Text('Sign Up'),
            onTap: (){
              print(1+1);
              print('Sign Up Tap');
              Navigator.pop(context);
              Navigator.pushNamed(context, '/signup');
            },
          )
        ],
      ),
    );
  }
}
