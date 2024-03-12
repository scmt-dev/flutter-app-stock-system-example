import 'package:flutter/material.dart';
import 'package:flutter_hello/widgets/app_drawer.dart';
import 'package:flutter_hello/widgets/card_item.dart';

import 'widgets/app_bar.dart';

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
        drawer: WidgetAppDrawer(),
        appBar: WidgetAppBar(),
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
            const Row(
              children: [
                CardItem(
                  title: 'Stock',
                  total: 10,
                  icon: Icon(Icons.inventory_2_outlined),
                ),
                CardItem(
                  title: 'Out Stock',
                  total: 11,
                  icon: Icon(Icons.inventory_2_outlined),
                ),
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
        ),
      ),
    );
  }
}
