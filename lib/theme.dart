import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4c662b),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcdeda3),
      onPrimaryContainer: Color(0xff354e16),
      secondary: Color(0xff4b662c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcceda4),
      onSecondaryContainer: Color(0xff344e16),
      tertiary: Color(0xff8a4a64),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd9e4),
      onTertiaryContainer: Color(0xff6e334d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1c16),
      onSurfaceVariant: Color(0xff44483d),
      outline: Color(0xff75796c),
      outlineVariant: Color(0xffc5c8ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffb1d18a),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff102000),
      primaryFixedDim: Color(0xffb1d18a),
      onPrimaryFixedVariant: Color(0xff354e16),
      secondaryFixed: Color(0xffcceda4),
      onSecondaryFixed: Color(0xff0f2000),
      secondaryFixedDim: Color(0xffb1d18a),
      onSecondaryFixedVariant: Color(0xff344e16),
      tertiaryFixed: Color(0xffffd9e4),
      onTertiaryFixed: Color(0xff390720),
      tertiaryFixedDim: Color(0xffffb0cd),
      onTertiaryFixedVariant: Color(0xff6e334d),
      surfaceDim: Color(0xffdadbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffeeefe3),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff253d05),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5a7539),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff243d06),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff597539),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5a233c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9b5873),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff0f120c),
      onSurfaceVariant: Color(0xff34382d),
      outline: Color(0xff505449),
      outlineVariant: Color(0xff6b6f62),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffb1d18a),
      primaryFixed: Color(0xff5a7539),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff425c23),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff597539),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff425c23),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9b5873),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7f415b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6c7bd),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4e9),
      surfaceContainer: Color(0xffe8e9de),
      surfaceContainerHigh: Color(0xffdcded3),
      surfaceContainerHighest: Color(0xffd1d3c8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1c3200),
      surfaceTint: Color(0xff4c662b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff375018),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1b3200),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff365019),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4e1831),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff71354f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2a2d24),
      outlineVariant: Color(0xff474b40),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inversePrimary: Color(0xffb1d18a),
      primaryFixed: Color(0xff375018),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff213902),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff365019),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff213903),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff71354f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff561f38),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb8baaf),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f2e6),
      surfaceContainer: Color(0xffe2e3d8),
      surfaceContainerHigh: Color(0xffd4d5ca),
      surfaceContainerHighest: Color(0xffc6c7bd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1d18a),
      surfaceTint: Color(0xffb1d18a),
      onPrimary: Color(0xff1f3701),
      primaryContainer: Color(0xff354e16),
      onPrimaryContainer: Color(0xffcdeda3),
      secondary: Color(0xffb1d18a),
      onSecondary: Color(0xff1e3702),
      secondaryContainer: Color(0xff344e16),
      onSecondaryContainer: Color(0xffcceda4),
      tertiary: Color(0xffffb0cd),
      onTertiary: Color(0xff531d36),
      tertiaryContainer: Color(0xff6e334d),
      onTertiaryContainer: Color(0xffffd9e4),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff12140e),
      onSurface: Color(0xffe2e3d8),
      onSurfaceVariant: Color(0xffc5c8ba),
      outline: Color(0xff8f9285),
      outlineVariant: Color(0xff44483d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff4c662b),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff102000),
      primaryFixedDim: Color(0xffb1d18a),
      onPrimaryFixedVariant: Color(0xff354e16),
      secondaryFixed: Color(0xffcceda4),
      onSecondaryFixed: Color(0xff0f2000),
      secondaryFixedDim: Color(0xffb1d18a),
      onSecondaryFixedVariant: Color(0xff344e16),
      tertiaryFixed: Color(0xffffd9e4),
      onTertiaryFixed: Color(0xff390720),
      tertiaryFixedDim: Color(0xffffb0cd),
      onTertiaryFixedVariant: Color(0xff6e334d),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff383a32),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff1a1c16),
      surfaceContainer: Color(0xff1e201a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc7e79e),
      surfaceTint: Color(0xffb1d18a),
      onPrimary: Color(0xff172b00),
      primaryContainer: Color(0xff7d9a59),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc6e79e),
      onSecondary: Color(0xff162b00),
      secondaryContainer: Color(0xff7c9a59),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd0df),
      onTertiary: Color(0xff46122b),
      tertiaryContainer: Color(0xffc47b97),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff12140e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdbdecf),
      outline: Color(0xffb0b3a5),
      outlineVariant: Color(0xff8e9285),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff364f17),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff081400),
      primaryFixedDim: Color(0xffb1d18a),
      onPrimaryFixedVariant: Color(0xff253d05),
      secondaryFixed: Color(0xffcceda4),
      onSecondaryFixed: Color(0xff081400),
      secondaryFixedDim: Color(0xffb1d18a),
      onSecondaryFixedVariant: Color(0xff243d06),
      tertiaryFixed: Color(0xffffd9e4),
      onTertiaryFixed: Color(0xff2b0016),
      tertiaryFixedDim: Color(0xffffb0cd),
      onTertiaryFixedVariant: Color(0xff5a233c),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff43453d),
      surfaceContainerLowest: Color(0xff060804),
      surfaceContainerLow: Color(0xff1c1e18),
      surfaceContainer: Color(0xff262922),
      surfaceContainerHigh: Color(0xff31342c),
      surfaceContainerHighest: Color(0xff3c3f37),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdafbb0),
      surfaceTint: Color(0xffb1d18a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffaecd86),
      onPrimaryContainer: Color(0xff050e00),
      secondary: Color(0xffd9fbb1),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffadcd87),
      onSecondaryContainer: Color(0xff050e00),
      tertiary: Color(0xffffebf0),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfffcacc9),
      onTertiaryContainer: Color(0xff20000f),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff12140e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeef2e2),
      outlineVariant: Color(0xffc1c4b6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d8),
      inversePrimary: Color(0xff364f17),
      primaryFixed: Color(0xffcdeda3),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb1d18a),
      onPrimaryFixedVariant: Color(0xff081400),
      secondaryFixed: Color(0xffcceda4),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb1d18a),
      onSecondaryFixedVariant: Color(0xff081400),
      tertiaryFixed: Color(0xffffd9e4),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb0cd),
      onTertiaryFixedVariant: Color(0xff2b0016),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff4f5149),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1e201a),
      surfaceContainer: Color(0xff2f312a),
      surfaceContainerHigh: Color(0xff3a3c35),
      surfaceContainerHighest: Color(0xff454840),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    //  textTheme: textTheme.apply(
    //    bodyColor: colorScheme.onSurface,
    //    displayColor: colorScheme.onSurface,
    //  ),
    fontFamily: "Boku2",
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
