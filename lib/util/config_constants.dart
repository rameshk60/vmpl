import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class VMPLConfigurationConstants {
  static String env = "dev";
  static String vmplUrl = "";
  static String appUrl = "";
  static String dataUrl = "";
  static String dummyLoginUsername = "varunmotors";
  static String dummyLoginPassword = "Vmpl@23";
}

class VMPLCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
