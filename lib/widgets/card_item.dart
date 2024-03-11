import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final double total;
  final Icon icon;
  const CardItem({
    super.key,
    required this.title,
    required this.total,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        leading:  icon,
        title: Text(title),
        subtitle: Text(
          total.toString(),
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
