import 'package:flutter/material.dart';

class AccesoriesUIPage extends StatefulWidget {
  const AccesoriesUIPage({super.key});

  @override
  State<AccesoriesUIPage> createState() => _AccesoriesUIPageState();
}

class _AccesoriesUIPageState extends State<AccesoriesUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Center(
            child: Text("Doccumnets"),
          )
        ],
      ),
    );
  }
}
