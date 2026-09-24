import 'package:flutter/foundation.dart';

import 'common.dart';
import 'src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Only enable verbose logging in debug builds.
  // In release builds, restrict to WARNING+ to prevent
  // PHI / PII from being written to device logs.
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
  } else {
    Logger.root.level = Level.WARNING;
  }

  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      debugPrint('${record.level.name}: ${record.message}');
    }
  });

  setPathUrlStrategy();
  runApp(ProviderScope(child: const MainApp()));
}
