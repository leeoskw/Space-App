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
      backgroundColor: AppColors.primary.shade300,
      cardColor: AppColors.primary.shade50,
      primaryIconTheme: IconThemeData(color: AppColors.secondary),
    );
  }
}
