import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/download_task_record.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/views/uec_main_app.dart';

void runMain({required VoidCallback configInit}) async {
  configInit();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // Plugin must be initialized before using
  await FlutterDownloader.initialize(
    debug: kDebugMode,
  );
  await FlutterDownloader.registerCallback(downloadCallback);

  Hive
    ..initFlutter('db')
    ..registerAdapter<YearGroup>(YearGroupAdapter())
    ..registerAdapter<Book>(BookAdapter());

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

@pragma('vm:entry-point')
void downloadCallback(String id, DownloadTaskStatus status, int progress) {
  final send = IsolateNameServer.lookupPortByName('downloader_send_port');
  send?.send(
    DownloadTaskRecord(
      id: id,
      status: status,
      progress: progress.toDouble(),
    ),
  );
}
