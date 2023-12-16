import 'package:flutter/material.dart';

class AccessoriesUIPage extends StatefulWidget {
  const AccessoriesUIPage({super.key});

  @override
  State<AccessoriesUIPage> createState() => _AccessoriesUIPageState();
}

class _AccessoriesUIPageState extends State<AccessoriesUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AccessoriesUIPage"),
      ),
    );
  }
}
