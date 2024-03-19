import 'package:flutter/material.dart';
import 'package:flutter_hello/widgets/drawer_widget.dart';

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
  Widget _box(String title, double total) {
    return Expanded(
      child: ListTile(
        leading: const Icon(
          Icons.inventory_2_outlined,
          size: 40.0,
          color: Colors.pink,
        ),
        title: Text(title),
        subtitle: Text(
          '$total',
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
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
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.qr_code_scanner_rounded),
                onPressed: () {
                  print('search');
                },
              ),
            ],
          ),
          Row(
            children: [
              _box('Stock', 10),
              _box('Out Stock', 2),
            ],
          ),
        ],
      ),
    );
  }
}
