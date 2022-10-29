import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_app/presentation/application.dart';

import 'injector.dart' as di;

main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  di.init();
  runApp(const Application());
}
