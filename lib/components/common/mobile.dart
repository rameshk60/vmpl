import 'package:flutter/material.dart';
import 'package:varun_new_project/components/common/mpinscreen.dart';
import 'package:varun_new_project/components/common/otpinput.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

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
                      TextField(
                          controller: userName,
                          decoration: InputDecoration(
                            labelText: "Emp ID",
                            labelStyle: TextStyle(
                                color: Colors.blue.shade100, fontSize: 18),
                            border: myInput(),
                            enabledBorder: myInput(),
                            focusedBorder: myFocus(),
                          )),
                      Container(height: 15),
                      TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: "Phone  Number",
                            labelStyle: TextStyle(
                                color: Colors.blue.shade100, fontSize: 18),
                            enabledBorder: myInput(),
                            focusedBorder: myFocus(),
                          )),
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
          width: MediaQuery.of(context).size.width,
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
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const Text("RESENDOTP")),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
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
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
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
                    fontWeight: FontWeight.w700),
              ),
            ),
          )),
    );
  }
}
