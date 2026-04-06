import 'dart:io';

import 'package:solid_examples/Section%203%20_%20OCP/3.2/factory/logger.dart';
import 'package:solid_examples/Section%203%20_%20OCP/3.2/factory/storage_keys.dart';

class FileLogger implements Logger {
  @override
  String get loggerType => StorageKeys.file;

  final String filePath;

  FileLogger(this.filePath);
  @override
  void log(String message) {
    final timestamp = DateTime.now().toIso8601String();
    final logEntry = '[$timestamp] $message\n';

    File(filePath).writeAsStringSync(logEntry, mode: FileMode.append);
    print('Logged to file: $logEntry');
  }
}
