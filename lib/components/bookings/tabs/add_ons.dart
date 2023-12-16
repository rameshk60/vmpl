import 'package:flutter/material.dart';

class AddonsUIPage extends StatefulWidget {
  const AddonsUIPage({super.key});

  @override
  State<AddonsUIPage> createState() => _AddonsUIPageState();
}

class _AddonsUIPageState extends State<AddonsUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Center(
            child: const Text("Add-ons"),
          )
        ],
      ),
    );
  }
}
