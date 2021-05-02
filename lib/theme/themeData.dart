import 'package:flutter/material.dart';
import 'package:space_app/theme/appColors.dart';

class AppTheme {
  const AppTheme();

  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'Comfortaa',
      accentColor: AppColors.accent,
      primarySwatch: AppColors.accent,
      primaryColorDark: AppColors.primary,
      backgroundColor: AppColors.primary.shade50,
      cardColor: AppColors.primary.shade300,
    );
  }

  static get postStyle =>
      {"titleStyle": TextStyle(fontSize: 40, fontWeight: FontWeight.bold), "contentStyle": TextStyle(fontSize: 19), "contentJustify": TextAlign.justify};
}
