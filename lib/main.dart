import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uec_textbooks/models/book_adapter.dart';
import 'package:uec_textbooks/views/uec_main_app.dart';

void runMain({required VoidCallback configInit}) async {
  configInit();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Hive
    ..initFlutter('db')
    ..registerAdapter(BookAdapter());
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
        ],
        fallbackLocale: const Locale('en', 'US'),
        path: 'l10n',
        child: const UECMainApp(),
      ),
    ),
  );
}
