import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          ListTile(
            title: const Text('Sign In'),
            onTap: (){},
          ),
          ListTile(
            title: const Text('Sign Up'),
            onTap: (){},
          )
        ],
      ),
    );
  }
}
