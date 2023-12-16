import 'package:flutter/material.dart';
import 'package:varun_new_project/components/common/mpinscreen.dart';
import 'package:varun_new_project/components/common/otpinput.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  void initState() {
    userName.text = "";
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
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
            Center(
              child: SizedBox(
                height: 30,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.blue.shade900),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                width: (sWidth < 800)
                    ? MediaQuery.of(context).size.width * 0.6
                    : MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    TextField(
                        controller: userName,
                        decoration: InputDecoration(
                          labelText: "Emp ID",
                          labelStyle: TextStyle(color: Colors.blue.shade100),
                          border: myInput(),
                          enabledBorder: myInput(),
                          focusedBorder: myFocus(),
                        )),
                    Container(height: 15),
                    TextField(
                        controller: password,
                        decoration: InputDecoration(
                          labelText: "Phone  Number",
                          labelStyle: TextStyle(color: Colors.blue.shade100),
                          enabledBorder: myInput(),
                          focusedBorder: myFocus(),
                        )),
                    const SizedBox(height: 15),
                    generateOtp(),
                  ],
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
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.blue.shade900,
          width: 1,
        ));
  }

  OutlineInputBorder myFocus() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
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
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50.0)),
                  ),
                  context: context,
                  builder: (context) {
                    return Container(
                        height: MediaQuery.of(context).size.height,
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
                              SizedBox(
                                height: 40,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'ENTER 4 DIGIT CODE code sent to 9876543210',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
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
                                          child: Text("RESENDOTP")),
                                    ),
                                  ),
                                  SizedBox(
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
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )),
    );
  }
}
