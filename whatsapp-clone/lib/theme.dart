import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData themeDataLight() {
    return ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: kPrimaryColor
        )
    );
}

ThemeData themeDataDark() {
    return ThemeData(
        scaffoldBackgroundColor: const Color(0xff121B22),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff1F2C34)
        ),
    );
}

