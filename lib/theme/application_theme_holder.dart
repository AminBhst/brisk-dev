import 'package:brisk/theme/application_theme.dart';
import 'package:brisk/setting/settings_cache.dart';

import 'application_themes/celestial_dark_theme.dart';
import 'application_themes/light_theme.dart';
import 'application_themes/signature_blue_theme.dart';

class ApplicationThemeHolder {
  static final List<ApplicationTheme> themes = [
    light,
    celestialDark,
    signatureBlue
  ];

  static late ApplicationTheme activeTheme = celestialDark;

  static bool isLight = activeTheme.themeId == 'Light';

  static void setActiveTheme() {
    activeTheme = themes
        .where((t) => t.themeId == SettingsCache.applicationThemeId)
        .first;
  }
}
