import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class CustomColorTokens {
  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;

  CustomColorTokens._({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  static CustomColorTokens from(Color color) {
    final isDark =
        SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

    final palette = CorePalette.of(color.value).primary;

    if (isDark) {
      return CustomColorTokens._(
        color: Color(palette.get(40)),
        onColor: Color(palette.get(100)),
        colorContainer: Color(palette.get(90)),
        onColorContainer: Color(palette.get(10)),
      );
    }

    return CustomColorTokens._(
      color: Color(palette.get(80)),
      onColor: Color(palette.get(20)),
      colorContainer: Color(palette.get(30)),
      onColorContainer: Color(palette.get(90)),
    );
  }

  static CustomColorTokens fromWithHarmonize(Color color, Color to) {
    final harmonized = Color(Blend.harmonize(color.value, to.value));
    return CustomColorTokens.from(harmonized);
  }
}
