// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:varun_new_project/components/common/login_ui.dart';
import 'package:varun_new_project/util/config_constants.dart';
import 'package:varun_new_project/util/sizs_config.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:varun_new_project/util/vmpl_theme.dart';

Map<String, String> apiUrls = Map.of({
  "dev": "",
  "qa": "",
  "prod": "",
});
Map<String, String> dataUrls = new Map.of({
  "dev": "",
  "qa": "",
  "prod": "",
});
void main([List<String>? envInfo]) {
  String env = "dev";
  if (envInfo == null || envInfo.length == 0) {
    env = "dev";
  } else {
    env = envInfo.elementAt(0);
  }

  VMPLConfigurationConstants.env = env;
  // VMPLConfigurationConstants.appUrl = apiUrls[env] ?? "";
  // VMPLConfigurationConstants.dataUrl = dataUrls[env] ?? "";
  VMPLConfigurationConstants.dummyLoginUsername =
      ((VMPLConfigurationConstants.env == "dev")
          ? VMPLConfigurationConstants.dummyLoginUsername
          : "");
  VMPLConfigurationConstants.dummyLoginPassword =
      ((VMPLConfigurationConstants.env == "dev")
          ? VMPLConfigurationConstants.dummyLoginPassword
          : "");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
      },
      child: CalendarControllerProvider(
        controller: EventController(),
        child: MaterialApp(
          title: 'VMPL',
          theme: vmpltheme,
          scrollBehavior: VMPLCustomScrollBehavior(),
          home: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool userAlreadyLoggedIn = false;
  bool verifiedLogin = false;
  bool isUpdateAvailable = false;
  String role = "";

  @override
  void initState() {
    userAlreadyLoggedIn = false;
    verifiedLogin = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation, context);
            return const SafeArea(
              bottom: true,
              top: true,
              child: Scaffold(body: Center(child: LoginPage())),
            );
          },
        );
      },
    );
  }
}
