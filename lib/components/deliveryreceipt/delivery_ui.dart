import 'package:flutter/material.dart';

class DeliveryUIPage extends StatefulWidget {
  const DeliveryUIPage({super.key});

  @override
  State<DeliveryUIPage> createState() => _DeliveryUIPageState();
}

class _DeliveryUIPageState extends State<DeliveryUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliveryUIPAGE"),
      ),
    );
  }
}
