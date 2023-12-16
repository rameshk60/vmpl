import 'package:flutter/material.dart';
import '../../util/bottom_sheet.dart';
import '../home/homescreen.dart';
import 'otpinput.dart';

class ConfirmPIN extends StatefulWidget {
  const ConfirmPIN({super.key});

  @override
  State<ConfirmPIN> createState() => _ConfirmPINState();
}

class _ConfirmPINState extends State<ConfirmPIN> {
  final TextEditingController pinOne = TextEditingController();
  final TextEditingController pinTwo = TextEditingController();
  final TextEditingController pinThree = TextEditingController();
  final TextEditingController pinFour = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("confirm - MPIN"),
      ),
      body: Column(
        children: [
          Container(height: 250, child: Image.asset("assets/images/cmpin.png")),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              "Confirm NEW - MPIN",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpInput(pinOne, true),
              OtpInput(pinTwo, false),
              OtpInput(pinThree, false),
              OtpInput(pinFour, false)
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
                            builder: (context) => BottomNavigation()
                            // const HomeScreen(),
                            ));
                  },
                  child: const Text(
                    "submit",
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
