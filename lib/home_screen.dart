import 'package:flutter/material.dart';
import 'package:varun_new_project/components/common/login_ui.dart';
import 'package:varun_new_project/components/common/mobile.dart';

import 'components/common/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: LoginPage(),
      ),
    );
  }
}
