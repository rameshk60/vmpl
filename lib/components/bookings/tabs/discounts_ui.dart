import 'package:flutter/material.dart';

class DiscountsUIPage extends StatefulWidget {
  const DiscountsUIPage({super.key});

  @override
  State<DiscountsUIPage> createState() => _DiscountsUIPageState();
}

class _DiscountsUIPageState extends State<DiscountsUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Center(
            child: Text("Discounts"),
          )
        ],
      ),
    );
  }
}
