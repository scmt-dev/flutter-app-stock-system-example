import 'package:flutter/material.dart';

class StockApplication extends StatelessWidget {
  const StockApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Stock App', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {
              print(1 + 1);
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {
              print(1 + 1);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          TextField(),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
        ],
      ),
    );
  }
}
