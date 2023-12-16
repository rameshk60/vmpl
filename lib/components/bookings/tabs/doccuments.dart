import 'package:flutter/material.dart';

class DoccumentsUIPage extends StatefulWidget {
  const DoccumentsUIPage({super.key});

  @override
  State<DoccumentsUIPage> createState() => _DoccumentsUIPageState();
}

class _DoccumentsUIPageState extends State<DoccumentsUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Center(
            child: const Text("Doccumnets"),
          )
        ],
      ),
    );
  }
}
