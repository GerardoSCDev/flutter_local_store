import 'package:flutter/material.dart';
import 'package:local_store/app/MyApp.dart';
import 'package:local_store/app/common/slangTexts//translations.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  runApp(TranslationProvider(child: const MyApp()));
}
