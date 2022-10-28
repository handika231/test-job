import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/presentation/pages/home_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money App',
      home: HomePage(),
    );
  }
}
