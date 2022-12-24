import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/views/uec_main_app.dart';

void runMain({required VoidCallback configInit}) {
  configInit();
  runApp(ProviderScope(child: UECMainApp()));
}
