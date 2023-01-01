import 'package:flutter/material.dart';

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF9BF988),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF9BF988),
  onPrimaryContainer: Color(0xFF0B6E0B),
  secondary: Color(0xFF54634E),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFD7E8CD),
  onSecondaryContainer: Color(0xFF121F0E),
  tertiary: Color(0xFF386569),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBCEBEE),
  onTertiaryContainer: Color(0xFF002022),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFCFDF6),
  onBackground: Color(0xFF1A1C18),
  surface: Color(0xFFFCFDF6),
  onSurface: Color(0xFF1A1C18),
  surfaceVariant: Color(0xFFDFE4D8),
  onSurfaceVariant: Color(0xFF43483F),
  outline: Color(0xFF73796E),
  onInverseSurface: Color(0xFFF1F1EB),
  inverseSurface: Color(0xFF2F312D),
  inversePrimary: Color(0xFF80DC6E),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF0B6E0B),
);

ThemeData myLightTheme = ThemeData.from(
  colorScheme: _lightColorScheme,
  useMaterial3: true,
);
