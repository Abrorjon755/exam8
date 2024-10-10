import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Sen",
    colorScheme: flexSchemeLight,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Sen",
    colorScheme: flexSchemeDark,
  );
}

const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffffffff),
  onPrimary: Color(0xffecf0f4),
  primaryContainer: Color(0xff121223),
  onPrimaryContainer: Color(0xff101413),
  secondary: Color(0xff4a635f),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xff32343E),
  onSecondaryContainer: Color(0xff111313),
  tertiary: Color(0xff646982),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffcfe5ff),
  onTertiaryContainer: Color(0xff111314),
  error: Color(0xffba1a1a),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad6),
  onErrorContainer: Color(0xff141212),
  surface: Color(0xfff8fafa),
  onSurface: Color(0xff090909),
  onSurfaceVariant: Color(0xff111212),
  outline: Color(0xff7c7c7c),
  outlineVariant: Color(0xffc8c8c8),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff101313),
  onInverseSurface: Color(0xfff5f5f5),
  inversePrimary: Color(0xff8ddcd5),
  surfaceTint: Color(0xffF58D1D),
);

const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff53dbca),
  onPrimary: Color(0xff0a1413),
  primaryContainer: Color(0xff005048),
  onPrimaryContainer: Color(0xffdfeceb),
  secondary: Color(0xffaeccce),
  onSecondary: Color(0xff111414),
  secondaryContainer: Color(0xff304b4d),
  onSecondaryContainer: Color(0xffe7ebeb),
  tertiary: Color(0xffc0c3ef),
  onTertiary: Color(0xff131314),
  tertiaryContainer: Color(0xff404468),
  onTertiaryContainer: Color(0xffe9eaf0),
  error: Color(0xffffb4ab),
  onError: Color(0xff141211),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xfff6dfe1),
  surface: Color(0xff141b1a),
  onSurface: Color(0xffeceded),
  onSurfaceVariant: Color(0xffdfe1e1),
  outline: Color(0xff767d7d),
  outlineVariant: Color(0xff2c2e2e),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xfff6fdfc),
  onInverseSurface: Color(0xff131313),
  inversePrimary: Color(0xff326d65),
  surfaceTint: Color(0xff53dbca),
);