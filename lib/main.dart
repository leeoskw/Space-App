import 'package:flutter/material.dart';
import 'package:space_app/views/appColors.dart';
import 'package:space_app/views/bottomNavigationBarLayout.dart';

void main() {
  runApp(SpaceApp());
}

class SpaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: AppColors.accent,
          // primaryColorDark: AppColors.primary,
          backgroundColor: AppColors.primary.shade50,
          accentColor: AppColors.accent,
        ),
      ),
      home: BottomNavegationBarLayout(),
    );
  }
}
