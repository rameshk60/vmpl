import "package:flutter/material.dart";
import 'package:varun_new_project/util/file_loc_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: FadeInImage.assetNetwork(
          placeholder: VMPLFileLocationConstants.SPLASH_SCREEN_GIF,
          fadeOutDuration: const Duration(milliseconds: 1),
          fadeInDuration: const Duration(milliseconds: 1),
          image: VMPLFileLocationConstants.VMPL_LOGO,
          //  VMPLConfigurationConstants.dataUrl +
          //     VMPLFileLocationConstants.splashScreenLargeGifURL,
          fit: BoxFit.contain,
        ));
  }
}
