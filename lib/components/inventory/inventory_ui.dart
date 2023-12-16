import 'package:flutter/material.dart';

class InventoryUIPage extends StatefulWidget {
  const InventoryUIPage({super.key});

  @override
  State<InventoryUIPage> createState() => _InventoryUIPageState();
}

class _InventoryUIPageState extends State<InventoryUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INVENTORY_UI_PAGE"),
      ),
    );
  }
}
