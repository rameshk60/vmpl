import 'package:flutter/material.dart';

class PaymentUIPage extends StatefulWidget {
  const PaymentUIPage({super.key});

  @override
  State<PaymentUIPage> createState() => _PaymentUIPageState();
}

class _PaymentUIPageState extends State<PaymentUIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Center(
            child: Text("Payments"),
          )
        ],
      ),
    );
  }
}
