import 'dart:async';

import 'package:flutter/material.dart';
import 'package:varun_new_project/components/common/login_ui.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  void initState() {
    logoutCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: const SizedBox(
          height: 500,
          width: 500,
          child: CircularProgressIndicator(
            strokeWidth: 20,
          ),
        ),
      ),
    );
  }

  void logoutCall() {
    Timer(const Duration(microseconds: 0), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const LoginPage();
          },
        ),
        // (Route<dynamic> route) => false,
      );
    });

    // AgHttpParams params = getGeneralParams("authentication/auth/LOGOUT_USER",
    //     jsonEncode({'atoken': AgUtilStaticData.aToken}));

    // AgHttps.callWithAuth(params);
    // AgUtilStaticData.rToken = null;
    // AGLoginResponseModel.expireTime = null;
    // AgUtilStaticData.expireTime = null;

    // AgUtilStaticData.aToken = null;
    // AgUtilStaticData.iToken = null;
    // AGLoginResponseModel.currentMenuContent = null;
    // AGLoginResponseModel.currentMenuIndex = null;
    // AGLoginResponseModel.currentTabIndex = null;
  }
}
