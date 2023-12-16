import 'package:flutter/material.dart';

ThemeData vmpltheme = vmplThemeData(VmplColorConst.primary, VmplColorConst.dark,
    VmplColorConst.light, VmplColorConst.mainColor);

class VmplColorConst {
  static final Color primary = Colors.blue.shade700;
  static final Color dark = Colors.grey.shade400;
  static const Color light = Colors.white;
  static const MaterialColor mainColor = Colors.blue;
}

ThemeData vmplThemeData(
    Color primary, Color dark, Color light, MaterialColor mainColor,
    {VmplFontSize fontSizeType = VmplFontSize.small, TextTheme? textTheme}) {
  return ThemeData(
    useMaterial3: true,
    //colorSchemeSeed: mainColor,
    primaryColor: primary,
    primaryColorDark: dark,
    primaryColorLight: light,

    colorScheme: ColorScheme.light(
        error: Colors.red, background: light, brightness: Brightness.light),

    navigationRailTheme: NavigationRailThemeData(
      selectedIconTheme: IconThemeData(color: primary),
      selectedLabelTextStyle: TextStyle(color: primary),
    ),
    inputDecorationTheme: const InputDecorationTheme(),
    textTheme: textTheme ??
        TextTheme(
          displayLarge:
              TextStyle(fontSize: 20, color: dark, fontWeight: FontWeight.bold),
          displayMedium: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          displaySmall:
              TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: dark),
          headlineMedium: const TextStyle(fontSize: 15, color: Colors.black),
          headlineSmall: TextStyle(fontSize: 15, color: dark),
          labelLarge: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.bold, color: dark),
          labelSmall: TextStyle(fontSize: 10.0, color: primary),
        ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
    appBarTheme: AppBarTheme(
      color: primary,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(primary)),
    ),
    iconTheme: IconThemeData(
      color: primary,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: primary,
    ),
    primaryIconTheme: IconThemeData(
      color: primary,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color>(primary),
      // checkColor: MaterialStateProperty.all<Color>(primary),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all<Color>(primary),
    ),
    sliderTheme: SliderThemeData(
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 18),
        activeTickMarkColor: primary,
        inactiveTickMarkColor: primary,
        tickMarkShape: const RoundSliderTickMarkShape(tickMarkRadius: 10),
        activeTrackColor: primary,
        inactiveTrackColor: light,
        thumbColor: dark),
    dataTableTheme: DataTableThemeData(
      headingTextStyle: TextStyle(color: primary),
      decoration: BoxDecoration(border: Border.all(color: primary)),
    ),
    textSelectionTheme: TextSelectionThemeData(cursorColor: primary),
    dividerTheme: DividerThemeData(color: primary),
    chipTheme: ChipThemeData(
      backgroundColor: light,
      disabledColor: light,
      selectedColor: primary,
      secondarySelectedColor: primary,
      padding: const EdgeInsets.all(3),
      labelStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      secondaryLabelStyle: const TextStyle(color: Colors.black),
      brightness: Brightness.light,
    ),
    timePickerTheme: TimePickerThemeData(
        dayPeriodTextColor: primary,
        dialHandColor: primary,
        hourMinuteTextColor: primary),
    dialogTheme: DialogTheme(titleTextStyle: TextStyle(color: primary)),
    scrollbarTheme: ScrollbarThemeData(
      mainAxisMargin: 3,
      trackColor: MaterialStateProperty.all<Color>(primary),
      thumbColor: MaterialStateProperty.all<Color>(primary),
      trackBorderColor: MaterialStateProperty.all<Color>(light),
    ),
    // popupMenuTheme: PopupMenuThemeData(),
  );
}

enum VmplFontSize { large, medium, small }

double h1(VmplFontSize fsSize) {
  switch (fsSize) {
    case VmplFontSize.large:
      return 28;
    case VmplFontSize.medium:
      return 26;
    case VmplFontSize.small:
      return 24;
    default:
      return 25;
  }
}

double h2(VmplFontSize fsSize) {
  switch (fsSize) {
    case VmplFontSize.large:
      return 25;
    case VmplFontSize.medium:
      return 23;
    case VmplFontSize.small:
      return 21;
    default:
      return 22;
  }
}

double h3(VmplFontSize fsSize) {
  switch (fsSize) {
    case VmplFontSize.large:
      return 22;
    case VmplFontSize.medium:
      return 20;
    case VmplFontSize.small:
      return 18;
    default:
      return 18;
  }
}

double h4(VmplFontSize fsSize) {
  switch (fsSize) {
    case VmplFontSize.large:
      return 18;
    case VmplFontSize.medium:
      return 17;
    case VmplFontSize.small:
      return 16;
    default:
      return 17;
  }
}

double h5(VmplFontSize fsSize) {
  switch (fsSize) {
    case VmplFontSize.large:
      return 16;
    case VmplFontSize.medium:
      return 14;
    case VmplFontSize.small:
      return 12;
    default:
      return 14;
  }
}
