import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());
  
  Intl.defaultLocale = 'pt_BR';

  //initializeDateFormatting().then((_) => runApp(const MyApp()));
  //Intl.defaSultLocale = 'pt_BR'; initializeDateFormatting("pt_BR", null);

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and provide SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
    ChangeNotifierProvider<SettingsController>.value(
      value: settingsController,
      child: const MyApp(),
    ),
  );
}
