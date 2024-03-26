import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: isDarkMode,
            onChanged: (val) {
              setState(() {
                isDarkMode = val;
              });
            },
          ),
          ListTile(
            title: const Text('Language'),
            trailing:const Icon(Icons.chevron_right),
            onTap: (){},
          ),
          ListTile(
            title: const Text('Currency'),
            trailing: const Icon(Icons.chevron_right),
            onTap: (){},
          ),
          ListTile(
            title: const Text('About'),
            trailing: const Icon(Icons.chevron_right),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
