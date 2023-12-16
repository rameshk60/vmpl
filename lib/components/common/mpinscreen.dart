import 'package:flutter/material.dart';
import 'package:varun_new_project/components/common/confirmmpin.dart';

import 'otpinput.dart';

class MPinScreen extends StatefulWidget {
  const MPinScreen({super.key});

  @override
  State<MPinScreen> createState() => _MPinScreenState();
}

class _MPinScreenState extends State<MPinScreen> {
  final TextEditingController _mpinOne = TextEditingController();
  final TextEditingController _mpinTwo = TextEditingController();
  final TextEditingController _mpinThree = TextEditingController();
  final TextEditingController _mpinFour = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Create NEW - MPIN"),
      ),
      body: Column(
        children: [
          SizedBox(height: 250, child: Image.asset("assets/images/newpin.jpg")),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Please Enter NEW - MPIN",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpInput(_mpinOne, true),
              OtpInput(_mpinTwo, false),
              OtpInput(_mpinThree, false),
              OtpInput(_mpinFour, false)
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConfirmPIN(),
                        ));
                  },
                  child: const Text(
                    "continue",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 18),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
