import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_app/presentation/application.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const Application());
}
