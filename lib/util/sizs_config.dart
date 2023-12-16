import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static Size? mediaQuery;

  static double? _screenWidth;
  static double? screenWidth;
  static double? _screenHeight;
  static double? screenHeight;
  static double screenshortestSide = 0;
  static double? _blockWidth = 0;
  static double? _blockHeight = 0;

  static double? _leftMargin = 0;
  static double? _rightMargin = 0;
  static double? _topMargin = 0;
  static double? _bottomMargin = 0;

  static double? gutterSpace = 16.0;
  static double? pixelDensity = 0;

  static double? textMultiplier;
  static double? imageSizeMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;
  static double? rowWidthWithOneColumns;
  static double? rowWidthWithTwoColumns;
  static double? forHorizontalTwoColumns;
  static double? rowWidthWithTwohalfColumns;
  static double? rowWidthWithThreeColumns;
  static double? rowWidthWithFourColumns;
  static double? rowWidthWithOneFourthColumns;
  static bool isPortrait = true;
  static bool isMobileMode = false;
  static bool isTabletMode = false;
  static String? platform;

  void init(BoxConstraints constraints, Orientation orientation,
      BuildContext context) {
    if (kIsWeb) {
      // platform = VMPLStringConstants.PF_WEB;
      // } else if (Platform.isIOS) {
      //   platform = VMPLStringConstants.PF_IOS;
    } else {
      // platform = VMPLStringConstants.PF_ANDROID;
    }
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = constraints.maxWidth;
    _screenHeight = constraints.maxHeight;

    screenWidth = _screenWidth;
    screenHeight = _screenHeight;
    mediaQuery = MediaQuery.of(context).size;

    _leftMargin = _mediaQueryData?.padding.left;
    _rightMargin = _mediaQueryData?.padding.right;
    _topMargin = _mediaQueryData?.padding.top;
    _bottomMargin = _mediaQueryData?.padding.bottom;

    _screenWidth = _screenWidth! - _leftMargin! - _rightMargin!;
    _screenHeight = _screenHeight! - _topMargin! - _bottomMargin!;

    isPortrait = false;
    isMobileMode = false;
    isTabletMode = false;

    if (orientation == Orientation.portrait) {
      isPortrait = true;
      if (_screenWidth! <= 500) {
        isMobileMode = true;
      } else {
        isTabletMode = true;
      }
    } else {
      isPortrait = false;
      if (_screenWidth! < 700) {
        isMobileMode = true;
      } else {
        isTabletMode = true;
      }
    }

    screenshortestSide = min(_screenHeight ?? 0, _screenWidth ?? 0);

    _blockWidth = _screenWidth! / 100;
    _blockHeight = _screenHeight! / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;

    rowWidthWithOneColumns = (widthMultiplier! * 100) - gutterSpace!;
    rowWidthWithTwoColumns = (widthMultiplier! * 50) - gutterSpace!;
    rowWidthWithFourColumns = (widthMultiplier! * 25) - gutterSpace!;

    forHorizontalTwoColumns = (widthMultiplier! * 45) -
        gutterSpace!; // FOr Horizontal Scroll row with 2.2
  }
}
