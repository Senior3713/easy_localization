import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:learn_localization/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [Locale('en', 'US'), Locale('uz', 'UZ')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en', 'US'),
    child: const LearnLocalization(),
  ));
}
