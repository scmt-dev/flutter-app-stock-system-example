import 'package:flutter/material.dart';

class StockApplication extends StatefulWidget {
  const StockApplication({super.key});

  @override
  State<StockApplication> createState() => _StockApplicationState();
}

class _StockApplicationState extends State<StockApplication> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
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
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        filled: true,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.qr_code_scanner,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  _box('Stock', 20),
                  _box('Out Stock', 13),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      'https://hips.hearstapps.com/hmg-prod/images/best-sugar-substitute-1660364690.jpg',
                      width: 100,
                      height: 100,
                    ),
                    title: Text('Sugar'),
                    subtitle: Text('21,000'),
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://jclao.com/wp-content/uploads/2019/06/Lao-Brewery-Co-Ltd.png',
                      width: 100,
                      height: 100,
                    ),
                    title: Text('Beer Lao'),
                    subtitle: Text('15,000'),
                  )
                ],
              )
            ],
          )),
    );
  }
}
