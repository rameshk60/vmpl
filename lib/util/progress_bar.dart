import 'package:flutter/material.dart';

class ProgressBarUI extends StatelessWidget {
  const ProgressBarUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: 5,
      color: Colors.orange.shade700,
    );
  }
}
