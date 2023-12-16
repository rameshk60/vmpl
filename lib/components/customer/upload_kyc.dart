import 'package:flutter/material.dart';

class UploadDoccuments extends StatefulWidget {
  const UploadDoccuments({super.key});

  @override
  State<UploadDoccuments> createState() => _UploadDoccumentsState();
}

class _UploadDoccumentsState extends State<UploadDoccuments> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KYC"),
      ),
      body: Column(
        children: [
          Column(
            children: [
              const Center(child: Text("Upload Files")),
              TextButton(onPressed: () {}, child: const Text("Upload file ")),
              const InkWell(
                child: Text("Upload 2"),
              )
            ],
          )
        ],
      ),
    );
  }
}
