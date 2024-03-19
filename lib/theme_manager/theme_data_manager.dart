import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getApplicationThemeData(BuildContext context) => ThemeData(
      fontFamily: 'AirbnbCereal',
      scaffoldBackgroundColor: const Color(0xFFF7F7F7),
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorManager.primary,
        surfaceTint: Colors.transparent,
      ),
    );
