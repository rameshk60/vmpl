import 'package:flutter/material.dart';
import 'dart:async';
import 'package:varun_new_project/components/common/mpinscreen.dart';
import 'package:varun_new_project/components/common/otpinput.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  int secondsRemaining = 60;
  bool enableResend = false;
  late Timer timer;

  @override
  initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Center(
            //   child: SizedBox(
            //     height: 30,
            //     child: Text(
            //       "Sign in",
            //       style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.w400,
            //           color: Colors.blue.shade900),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: TextFormField(
                            onFieldSubmitted: (valu) => (value) {},
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                return 'Enter a valid email!';
                              }
                              return null;
                            },
                            controller: userName,
                            decoration: InputDecoration(
                              labelText: "Emp ID",
                              labelStyle: TextStyle(
                                  color: Colors.blue.shade100, fontSize: 18),
                              border: myInput(),
                              enabledBorder: myInput(),
                              focusedBorder: myFocus(),
                            )),
                      ),
                      Container(height: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: TextField(
                            controller: password,
                            decoration: InputDecoration(
                              labelText: "Phone  Number",
                              labelStyle: TextStyle(
                                  color: Colors.blue.shade100, fontSize: 18),
                              enabledBorder: myInput(),
                              focusedBorder: myFocus(),
                            )),
                      ),
                      const SizedBox(height: 15),
                      generateOtp(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder myInput() {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.blue.shade900,
          width: 1,
        ));
  }

  OutlineInputBorder myFocus() {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.blue.shade900,
          width: 1,
        ));
  }

  Widget generateOtp() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
          alignment: Alignment.bottomRight,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50.0)),
                  ),
                  context: context,
                  builder: (context) {
                    return Container(
                        // color: Colors.amber,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                height: 5,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                                margin: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'ENTER 4 DIGIT CODE code sent to 9876543210',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      OtpInput(_fieldOne, true),
                                      OtpInput(_fieldTwo, false),
                                      OtpInput(_fieldThree, false),
                                      OtpInput(_fieldFour, false)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 80),
                                        child: Text(
                                          ' $secondsRemaining seconds',
                                          style: const TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 80),
                                          child: TextButton(
                                              onPressed: () {
                                                enableResend
                                                    ? _resendCode
                                                    : null;
                                              },
                                              child: Text(
                                                "RESEND OTP",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.blue.shade700,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MPinScreen()),
                                          );
                                        },
                                        child: const Center(
                                          child: Text(
                                            'Verify',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ]));
                  });
            },
            child: const Center(
              child: Text(
                'GET OTP',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ),
          )),
    );
  }

  void _resendCode() {
    //other code here
    setState(() {
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  @override
  dispose() {
    timer.cancel();
    super.dispose();
  }
}
