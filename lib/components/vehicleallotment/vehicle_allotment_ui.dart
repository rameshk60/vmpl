import 'package:flutter/material.dart';

class VehicleUIPage extends StatefulWidget {
  const VehicleUIPage({super.key});

  @override
  State<VehicleUIPage> createState() => _VehicleUIPageState();
}

class _VehicleUIPageState extends State<VehicleUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VehicleALLOTMENTUIPAGE"),
      ),
    );
  }
}
