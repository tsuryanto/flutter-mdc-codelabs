import 'package:flutter/material.dart';
import 'package:shrine/colors.dart';

import '../supplemental/cut_corners_border.dart';

class ShrineTheme {
  ThemeData _buildShrineTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: kShrinePurple,
        // onPrimary: kShrineBrown900,
        secondary: kShrinePurple,
        error: kShrineErrorRed,
      ),
      scaffoldBackgroundColor: kShrineSurfaceWhite,
      // Add the text themes (103)
      textTheme: _buildShrineTextTheme(base.textTheme),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: kShrinePurple,
      ),
      // TODO: Add the icon themes (103)
      // TODO: Decorate the inputs (103)
      inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: CutCornersBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: kShrinePurple,
            ),
          ),
          border: CutCornersBorder()),
    );
  }

  // Build a Shrine Text Theme (103)
  TextTheme _buildShrineTextTheme(TextTheme base) {
    return base
        .copyWith(
          headline5: base.headline5!.copyWith(
            fontWeight: FontWeight.w500,
          ),
          headline6: base.headline6!.copyWith(
            fontSize: 18.0,
          ),
          caption: base.caption!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
          bodyText1: base.bodyText1!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        )
        .apply(
          fontFamily: 'Rubik',
          displayColor: kShrineBrown900,
          bodyColor: kShrineBrown900,
        );
  }

  ThemeData get buildTheme => _buildShrineTheme();
  // TextTheme buildTextTheme(TextTheme base) => _buildShrineTextTheme(base);
}
